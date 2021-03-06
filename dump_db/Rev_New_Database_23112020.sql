PGDMP                     
    x            kemendag_rev    11.9    12.2 D              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    18864    kemendag_rev    DATABASE     �   CREATE DATABASE kemendag_rev WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag_rev;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    19109    about_us    TABLE       CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.about_us;
       public            postgres    false    3            �            1259    19107    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public          postgres    false    233    3                       0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
          public          postgres    false    232            �            1259    19117    about_us_translations    TABLE     &  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    about_content character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public            postgres    false    3            �            1259    19115    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public          postgres    false    235    3                       0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
          public          postgres    false    234            �            1259    19059    albums    TABLE     �  CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    cover_image character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.albums;
       public            postgres    false    3            �            1259    19057    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public          postgres    false    225    3                       0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
          public          postgres    false    224                       1259    19391    article_categories    TABLE     8  CREATE TABLE public.article_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    parent_id bigint,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.article_categories;
       public            postgres    false    3                       1259    19389    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public          postgres    false    3    274                       0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
          public          postgres    false    273            �            1259    19002    cities    TABLE       CREATE TABLE public.cities (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_id bigint NOT NULL,
    city_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cities;
       public            postgres    false    3            �            1259    19000    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    3    217                       0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    216            �            1259    18972 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public            postgres    false    3            �            1259    18970    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    3    212                       0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    211                       1259    25128    definas    TABLE     ]  CREATE TABLE public.definas (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    hs_code bigint NOT NULL,
    uraian character varying(255) NOT NULL,
    tarif character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.definas;
       public            postgres    false    3                       1259    25126    definas_id_seq    SEQUENCE     w   CREATE SEQUENCE public.definas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.definas_id_seq;
       public          postgres    false    3    276                       0    0    definas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.definas_id_seq OWNED BY public.definas.id;
          public          postgres    false    275            �            1259    19016    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.duty_categories;
       public            postgres    false    3            �            1259    19014    duty_categories_id_seq    SEQUENCE        CREATE SEQUENCE public.duty_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public          postgres    false    3    219                       0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
          public          postgres    false    218            �            1259    19024    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id bigint NOT NULL,
    duty_category_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public            postgres    false    3            �            1259    19022 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public          postgres    false    3    221                       0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
          public          postgres    false    220                       1259    19286    event_documentations    TABLE     m  CREATE TABLE public.event_documentations (
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
       public            postgres    false    3                       1259    19284    event_documentations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_documentations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.event_documentations_id_seq;
       public          postgres    false    259    3                       0    0    event_documentations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.event_documentations_id_seq OWNED BY public.event_documentations.id;
          public          postgres    false    258            �            1259    19217    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public            postgres    false    3            �            1259    19215    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public          postgres    false    3    249                       0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
          public          postgres    false    248            �            1259    19206    events    TABLE       CREATE TABLE public.events (
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
       public            postgres    false    3            �            1259    19204    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    247    3                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    246            �            1259    19051    faq_categories    TABLE       CREATE TABLE public.faq_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.faq_categories;
       public            postgres    false    3            �            1259    19049    faq_categories_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.faq_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public          postgres    false    3    223                       0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
          public          postgres    false    222            �            1259    19195    faqs    TABLE     =  CREATE TABLE public.faqs (
    id bigint NOT NULL,
    faq_category_id integer NOT NULL,
    site_id uuid NOT NULL,
    question text NOT NULL,
    answer text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.faqs;
       public            postgres    false    3            �            1259    19193    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public          postgres    false    3    245                       0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
          public          postgres    false    244                       1259    19372    footer_translations    TABLE     �   CREATE TABLE public.footer_translations (
    id bigint NOT NULL,
    footer_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
 '   DROP TABLE public.footer_translations;
       public            postgres    false    3                       1259    19370    footer_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.footer_translations_id_seq;
       public          postgres    false    272    3                       0    0    footer_translations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.footer_translations_id_seq OWNED BY public.footer_translations.id;
          public          postgres    false    271                       1259    19364    footers    TABLE     �   CREATE TABLE public.footers (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    url character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.footers;
       public            postgres    false    3                       1259    19362    footers_id_seq    SEQUENCE     w   CREATE SEQUENCE public.footers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          postgres    false    270    3                       0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          postgres    false    269            �            1259    19087    front_banners    TABLE     �  CREATE TABLE public.front_banners (
    id bigint NOT NULL,
    "position" integer,
    type integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255),
    link character varying(255),
    site_id uuid NOT NULL,
    status_id uuid,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.front_banners;
       public            postgres    false    3            �            1259    19085    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public          postgres    false    229    3                       0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
          public          postgres    false    228            �            1259    19070    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id bigint NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public            postgres    false    3            �            1259    19068    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    227    3                       0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            
           1259    19342    investigation_categories    TABLE     �   CREATE TABLE public.investigation_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.investigation_categories;
       public            postgres    false    3            	           1259    19340    investigation_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.investigation_categories_id_seq;
       public          postgres    false    266    3                       0    0    investigation_categories_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.investigation_categories_id_seq OWNED BY public.investigation_categories.id;
          public          postgres    false    265                       1259    19324    investigation_data    TABLE     �  CREATE TABLE public.investigation_data (
    id uuid NOT NULL,
    investigation_category integer NOT NULL,
    product_id bigint NOT NULL,
    start_date timestamp(0) without time zone NOT NULL,
    end_date timestamp(0) without time zone,
    description text NOT NULL,
    status text NOT NULL,
    notes text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.investigation_data;
       public            postgres    false    3                       1259    19350    investigation_documents    TABLE     �   CREATE TABLE public.investigation_documents (
    id bigint NOT NULL,
    investigation_id uuid NOT NULL,
    filename character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.investigation_documents;
       public            postgres    false    3                       1259    19348    investigation_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.investigation_documents_id_seq;
       public          postgres    false    3    268                       0    0    investigation_documents_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.investigation_documents_id_seq OWNED BY public.investigation_documents.id;
          public          postgres    false    267                       1259    19334    investigation_products    TABLE     �   CREATE TABLE public.investigation_products (
    id bigint NOT NULL,
    product_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.investigation_products;
       public            postgres    false    3                       1259    19332    investigation_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.investigation_products_id_seq;
       public          postgres    false    3    264                        0    0    investigation_products_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.investigation_products_id_seq OWNED BY public.investigation_products.id;
          public          postgres    false    263            �            1259    18892    log_activities    TABLE     �  CREATE TABLE public.log_activities (
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
       public            postgres    false    3            �            1259    18890    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public          postgres    false    3    201            !           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
          public          postgres    false    200            �            1259    19136    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.main_duties;
       public            postgres    false    3            �            1259    19134    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public          postgres    false    237    3            "           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
          public          postgres    false    236            �            1259    19144    main_duty_translations    TABLE     h  CREATE TABLE public.main_duty_translations (
    id bigint NOT NULL,
    main_duty_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    mainduty character varying(255) NOT NULL,
    function text NOT NULL
);
 *   DROP TABLE public.main_duty_translations;
       public            postgres    false    3            �            1259    19142    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public          postgres    false    239    3            #           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
          public          postgres    false    238            �            1259    18867 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false    3            �            1259    18865    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    3    197            $           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    18923    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false    3            �            1259    18934    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false    3            �            1259    19249    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public            postgres    false    3            �            1259    19247    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public          postgres    false    3    253            %           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
          public          postgres    false    252            �            1259    19238 	   officials    TABLE     j  CREATE TABLE public.officials (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    userpic character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.officials;
       public            postgres    false    3            �            1259    19236    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public          postgres    false    3    251            &           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
          public          postgres    false    250            �            1259    18883    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false    3            �            1259    18903    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false    3            �            1259    18901    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    3    203            '           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    202            �            1259    19174    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public            postgres    false    3            �            1259    19172    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public          postgres    false    3    243            (           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
          public          postgres    false    242            �            1259    19163    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type_id smallint NOT NULL,
    category_id bigint NOT NULL,
    category_child_id bigint,
    years integer,
    reference_custom character varying(255),
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    keywords character varying(255),
    description character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    published_date timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posts;
       public            postgres    false    3            �            1259    19161    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    3    241            )           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    240                       1259    19278    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public            postgres    false    3                        1259    19276    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public          postgres    false    257    3            *           0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
          public          postgres    false    256            �            1259    19098    publications    TABLE       CREATE TABLE public.publications (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_id integer NOT NULL,
    section_id integer,
    publish_year character varying(255),
    cover_image character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    file character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    ref_code character varying
);
     DROP TABLE public.publications;
       public            postgres    false    3            �            1259    19096    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public          postgres    false    3    231            +           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
          public          postgres    false    230                       1259    19302    regional_trade_offices    TABLE     D  CREATE TABLE public.regional_trade_offices (
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
       public            postgres    false    3                       1259    19300    regional_trade_offices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regional_trade_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.regional_trade_offices_id_seq;
       public          postgres    false    3    261            ,           0    0    regional_trade_offices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.regional_trade_offices_id_seq OWNED BY public.regional_trade_offices.id;
          public          postgres    false    260            �            1259    18988    regions    TABLE     �   CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public            postgres    false    3            �            1259    18986    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    3    215            -           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    214            �            1259    18945    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false    3            �            1259    18914    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false    3            �            1259    18912    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    205    3            .           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    204            �            1259    18965    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public            postgres    false    3            �            1259    18960    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public            postgres    false    3            �            1259    19270    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public            postgres    false    3            �            1259    19268    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public          postgres    false    255    3            /           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
          public          postgres    false    254            �            1259    18873    users    TABLE       CREATE TABLE public.users (
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
       public            postgres    false    3            �            1259    18978    videos    TABLE       CREATE TABLE public.videos (
    id uuid NOT NULL,
    video_id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    thumbnail character varying(255) NOT NULL,
    thumbnail_small character varying(255) NOT NULL,
    player character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.videos;
       public            postgres    false    3            �           2604    19112    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    19120    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    19062 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    19394    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    19005 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18975    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    25131 
   definas id    DEFAULT     h   ALTER TABLE ONLY public.definas ALTER COLUMN id SET DEFAULT nextval('public.definas_id_seq'::regclass);
 9   ALTER TABLE public.definas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            �           2604    19019    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    19027    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    19289    event_documentations id    DEFAULT     �   ALTER TABLE ONLY public.event_documentations ALTER COLUMN id SET DEFAULT nextval('public.event_documentations_id_seq'::regclass);
 F   ALTER TABLE public.event_documentations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    259    259            �           2604    19220    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    19209 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    19054    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    19198    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    19375    footer_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_translations_id_seq'::regclass);
 E   ALTER TABLE public.footer_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            �           2604    19367 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            �           2604    19090    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    19073 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    19345    investigation_categories id    DEFAULT     �   ALTER TABLE ONLY public.investigation_categories ALTER COLUMN id SET DEFAULT nextval('public.investigation_categories_id_seq'::regclass);
 J   ALTER TABLE public.investigation_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    19353    investigation_documents id    DEFAULT     �   ALTER TABLE ONLY public.investigation_documents ALTER COLUMN id SET DEFAULT nextval('public.investigation_documents_id_seq'::regclass);
 I   ALTER TABLE public.investigation_documents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    19337    investigation_products id    DEFAULT     �   ALTER TABLE ONLY public.investigation_products ALTER COLUMN id SET DEFAULT nextval('public.investigation_products_id_seq'::regclass);
 H   ALTER TABLE public.investigation_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            �           2604    18895    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    19139    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    19147    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    18870    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            �           2604    19252    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    19241    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    18906    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    19177    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    19166    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    19281    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            �           2604    19101    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    19305    regional_trade_offices id    DEFAULT     �   ALTER TABLE ONLY public.regional_trade_offices ALTER COLUMN id SET DEFAULT nextval('public.regional_trade_offices_id_seq'::regclass);
 H   ALTER TABLE public.regional_trade_offices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    261    261            �           2604    18991 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    18917    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    19273    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            �          0    19109    about_us 
   TABLE DATA           j   COPY public.about_us (id, status_id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    233            �          0    19117    about_us_translations 
   TABLE DATA           o   COPY public.about_us_translations (id, about_us_id, locale, about_content, created_at, updated_at) FROM stdin;
    public          postgres    false    235            �          0    19059    albums 
   TABLE DATA           �   COPY public.albums (id, name, slug, description, cover_image, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    225                      0    19391    article_categories 
   TABLE DATA           �   COPY public.article_categories (id, category_name, site_id, parent_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    274            �          0    19002    cities 
   TABLE DATA           ^   COPY public.cities (id, country_id, region_id, city_name, created_at, updated_at) FROM stdin;
    public          postgres    false    217            �          0    18972 	   countries 
   TABLE DATA           M   COPY public.countries (id, country_name, created_at, updated_at) FROM stdin;
    public          postgres    false    212                      0    25128    definas 
   TABLE DATA           y   COPY public.definas (id, country_id, hs_code, uraian, tarif, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    276            �          0    19016    duty_categories 
   TABLE DATA           f   COPY public.duty_categories (id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    219            �          0    19024    duty_category_translations 
   TABLE DATA           g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public          postgres    false    221            �          0    19286    event_documentations 
   TABLE DATA           �   COPY public.event_documentations (id, event_id, file_title, file, video_id, video_title, thumbnail, thumbnail_small, player) FROM stdin;
    public          postgres    false    259            �          0    19217    event_translations 
   TABLE DATA           \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public          postgres    false    249            �          0    19206    events 
   TABLE DATA           �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    247            �          0    19051    faq_categories 
   TABLE DATA           t   COPY public.faq_categories (id, category_name, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    223            �          0    19195    faqs 
   TABLE DATA           ~   COPY public.faqs (id, faq_category_id, site_id, question, answer, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    245                       0    19372    footer_translations 
   TABLE DATA           J   COPY public.footer_translations (id, footer_id, locale, name) FROM stdin;
    public          postgres    false    272            �          0    19364    footers 
   TABLE DATA           S   COPY public.footers (id, site_id, urutan, url, created_at, updated_at) FROM stdin;
    public          postgres    false    270            �          0    19087    front_banners 
   TABLE DATA           �   COPY public.front_banners (id, "position", type, title, image, description, link, site_id, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    229            �          0    19070    images 
   TABLE DATA           Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public          postgres    false    227            �          0    19342    investigation_categories 
   TABLE DATA           ]   COPY public.investigation_categories (id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    266            �          0    19324    investigation_data 
   TABLE DATA           �   COPY public.investigation_data (id, investigation_category, product_id, start_date, end_date, description, status, notes, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    262            �          0    19350    investigation_documents 
   TABLE DATA           i   COPY public.investigation_documents (id, investigation_id, filename, created_at, updated_at) FROM stdin;
    public          postgres    false    268            �          0    19334    investigation_products 
   TABLE DATA           Z   COPY public.investigation_products (id, product_name, created_at, updated_at) FROM stdin;
    public          postgres    false    264            �          0    18892    log_activities 
   TABLE DATA           w   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    201            �          0    19136    main_duties 
   TABLE DATA           b   COPY public.main_duties (id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    237            �          0    19144    main_duty_translations 
   TABLE DATA           z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public          postgres    false    239            �          0    18867 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197            �          0    18923    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    206            �          0    18934    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    207            �          0    19249    official_translations 
   TABLE DATA           U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public          postgres    false    253            �          0    19238 	   officials 
   TABLE DATA           x   COPY public.officials (id, site_id, name, address, userpic, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    251            �          0    18883    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    199            �          0    18903    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    203            �          0    19174    post_translations 
   TABLE DATA           V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public          postgres    false    243            �          0    19163    posts 
   TABLE DATA           �   COPY public.posts (id, site_id, type_id, category_id, category_child_id, years, reference_custom, source, file, reporter_id, status_id, keywords, description, created_by, updated_by, published_date, created_at, updated_at) FROM stdin;
    public          postgres    false    241            �          0    19278    publication_categories 
   TABLE DATA           d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    257            �          0    19098    publications 
   TABLE DATA           �   COPY public.publications (id, site_id, category_id, section_id, publish_year, cover_image, title, link, file, created_by, updated_by, created_at, updated_at, ref_code) FROM stdin;
    public          postgres    false    231            �          0    19302    regional_trade_offices 
   TABLE DATA           �   COPY public.regional_trade_offices (id, city_id, address, phone, fax, website, email, official_1, official_2, latitude, longitude, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    261            �          0    18988    regions 
   TABLE DATA           V   COPY public.regions (id, country_id, region_name, created_at, updated_at) FROM stdin;
    public          postgres    false    215            �          0    18945    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    208            �          0    18914    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    205            �          0    18965    sites 
   TABLE DATA           F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public          postgres    false    210            �          0    18960    statuses 
   TABLE DATA           K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public          postgres    false    209            �          0    19270    units 
   TABLE DATA           g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    255            �          0    18873    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public          postgres    false    198            �          0    18978    videos 
   TABLE DATA           �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    213            0           0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
          public          postgres    false    232            1           0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
          public          postgres    false    234            2           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
          public          postgres    false    224            3           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 49, true);
          public          postgres    false    273            4           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    216            5           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 2, true);
          public          postgres    false    211            6           0    0    definas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.definas_id_seq', 1, false);
          public          postgres    false    275            7           0    0    duty_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.duty_categories_id_seq', 1, false);
          public          postgres    false    218            8           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 1, false);
          public          postgres    false    220            9           0    0    event_documentations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.event_documentations_id_seq', 1, false);
          public          postgres    false    258            :           0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 1, false);
          public          postgres    false    248            ;           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public          postgres    false    246            <           0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
          public          postgres    false    222            =           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
          public          postgres    false    244            >           0    0    footer_translations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.footer_translations_id_seq', 1, false);
          public          postgres    false    271            ?           0    0    footers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.footers_id_seq', 1, false);
          public          postgres    false    269            @           0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
          public          postgres    false    228            A           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    226            B           0    0    investigation_categories_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.investigation_categories_id_seq', 1, false);
          public          postgres    false    265            C           0    0    investigation_documents_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.investigation_documents_id_seq', 1, false);
          public          postgres    false    267            D           0    0    investigation_products_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.investigation_products_id_seq', 1, false);
          public          postgres    false    263            E           0    0    log_activities_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.log_activities_id_seq', 72, true);
          public          postgres    false    200            F           0    0    main_duties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, false);
          public          postgres    false    236            G           0    0    main_duty_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 1, false);
          public          postgres    false    238            H           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 43, true);
          public          postgres    false    196            I           0    0    official_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.official_translations_id_seq', 1, false);
          public          postgres    false    252            J           0    0    officials_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.officials_id_seq', 1, false);
          public          postgres    false    250            K           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
          public          postgres    false    202            L           0    0    post_translations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.post_translations_id_seq', 2, true);
          public          postgres    false    242            M           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    240            N           0    0    publication_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publication_categories_id_seq', 7, true);
          public          postgres    false    256            O           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
          public          postgres    false    230            P           0    0    regional_trade_offices_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.regional_trade_offices_id_seq', 1, false);
          public          postgres    false    260            Q           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
          public          postgres    false    214            R           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 1, true);
          public          postgres    false    204            S           0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
          public          postgres    false    254            �           2606    19114    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public            postgres    false    233            �           2606    19127 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public            postgres    false    235    235            �           2606    19125 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public            postgres    false    235            �           2606    19067    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public            postgres    false    225            (           2606    19396 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public            postgres    false    274            �           2606    19007    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    217            �           2606    18977    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    212            *           2606    25136    definas definas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.definas
    ADD CONSTRAINT definas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.definas DROP CONSTRAINT definas_pkey;
       public            postgres    false    276            �           2606    19021 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public            postgres    false    219            �           2606    19034 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public            postgres    false    221    221            �           2606    19032 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public            postgres    false    221                       2606    19294 .   event_documentations event_documentations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_pkey;
       public            postgres    false    259                       2606    19227 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public            postgres    false    249    249                       2606    19225 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public            postgres    false    249                       2606    19235 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public            postgres    false    249            �           2606    19214    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    247            �           2606    19056 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public            postgres    false    223            �           2606    19203    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public            postgres    false    245            #           2606    19382 ?   footer_translations footer_translations_footer_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_footer_id_locale_unique UNIQUE (footer_id, locale);
 i   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_footer_id_locale_unique;
       public            postgres    false    272    272            &           2606    19380 ,   footer_translations footer_translations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_pkey;
       public            postgres    false    272            !           2606    19369    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            postgres    false    270            �           2606    19095     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public            postgres    false    229            �           2606    19078    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227                       2606    19347 6   investigation_categories investigation_categories_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.investigation_categories
    ADD CONSTRAINT investigation_categories_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.investigation_categories DROP CONSTRAINT investigation_categories_pkey;
       public            postgres    false    266                       2606    19331 *   investigation_data investigation_data_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.investigation_data
    ADD CONSTRAINT investigation_data_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.investigation_data DROP CONSTRAINT investigation_data_pkey;
       public            postgres    false    262                       2606    19355 4   investigation_documents investigation_documents_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.investigation_documents
    ADD CONSTRAINT investigation_documents_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.investigation_documents DROP CONSTRAINT investigation_documents_pkey;
       public            postgres    false    268                       2606    19339 2   investigation_products investigation_products_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.investigation_products
    ADD CONSTRAINT investigation_products_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.investigation_products DROP CONSTRAINT investigation_products_pkey;
       public            postgres    false    264            �           2606    18900 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public            postgres    false    201            �           2606    19141    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public            postgres    false    237            �           2606    19154 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public            postgres    false    239    239            �           2606    19152 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public            postgres    false    239            �           2606    18872    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            �           2606    18933 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    206    206    206            �           2606    18944 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    207    207    207                       2606    19259 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public            postgres    false    253    253                       2606    19257 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public            postgres    false    253                       2606    19267 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public            postgres    false    253                       2606    19246    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public            postgres    false    251            �           2606    18911    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    203            �           2606    19182 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public            postgres    false    243            �           2606    19184 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public            postgres    false    243    243            �           2606    19192 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public            postgres    false    243            �           2606    19171    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    241                       2606    19283 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public            postgres    false    257            �           2606    19106    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public            postgres    false    231                       2606    19310 2   regional_trade_offices regional_trade_offices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.regional_trade_offices
    ADD CONSTRAINT regional_trade_offices_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.regional_trade_offices DROP CONSTRAINT regional_trade_offices_pkey;
       public            postgres    false    261            �           2606    18993    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    215            �           2606    18959 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    208    208            �           2606    18922    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    205            �           2606    18969    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public            postgres    false    210            �           2606    18964    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    209                       2606    19275    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public            postgres    false    255            �           2606    18882    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    198            �           2606    18880    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    198            �           2606    18985    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    213            �           1259    19133 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public            postgres    false    235            �           1259    19013    cities_region_id_index    INDEX     N   CREATE INDEX cities_region_id_index ON public.cities USING btree (region_id);
 *   DROP INDEX public.cities_region_id_index;
       public            postgres    false    217            �           1259    19040 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public            postgres    false    221                       1259    19233    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public            postgres    false    249            $           1259    19388     footer_translations_locale_index    INDEX     b   CREATE INDEX footer_translations_locale_index ON public.footer_translations USING btree (locale);
 4   DROP INDEX public.footer_translations_locale_index;
       public            postgres    false    272            �           1259    19084    images_album_id_index    INDEX     L   CREATE INDEX images_album_id_index ON public.images USING btree (album_id);
 )   DROP INDEX public.images_album_id_index;
       public            postgres    false    227            �           1259    19160 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public            postgres    false    239            �           1259    18926 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    206    206            �           1259    18937 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    207    207            	           1259    19265 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public            postgres    false    253            �           1259    18889    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    199            �           1259    19190    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public            postgres    false    243            �           1259    18999    regions_country_id_index    INDEX     R   CREATE INDEX regions_country_id_index ON public.regions USING btree (country_id);
 ,   DROP INDEX public.regions_country_id_index;
       public            postgres    false    215            3           2606    19128 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public          postgres    false    3046    235    233            0           2606    19008    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public          postgres    false    3023    217    215            1           2606    19035 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public          postgres    false    3028    219    221            8           2606    19295 :   event_documentations event_documentations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_event_id_foreign;
       public          postgres    false    3071    247    259            6           2606    19228 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public          postgres    false    3071    249    247            :           2606    19383 9   footer_translations footer_translations_footer_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_footer_id_foreign FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_footer_id_foreign;
       public          postgres    false    3105    272    270            2           2606    19079    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public          postgres    false    3037    227    225            9           2606    19356 H   investigation_documents investigation_documents_investigation_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.investigation_documents
    ADD CONSTRAINT investigation_documents_investigation_id_foreign FOREIGN KEY (investigation_id) REFERENCES public.investigation_data(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.investigation_documents DROP CONSTRAINT investigation_documents_investigation_id_foreign;
       public          postgres    false    268    262    3097            4           2606    19155 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public          postgres    false    239    3053    237            +           2606    18927 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    3002    206    203            ,           2606    18938 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    3004    205    207            7           2606    19260 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public          postgres    false    253    251    3080            5           2606    19185 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public          postgres    false    243    3060    241            /           2606    18994 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public          postgres    false    215    212    3018            -           2606    18948 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    208    203    3002            .           2606    18953 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    3004    205    208            �      x������ � �      �      x������ � �      �      x������ � �         �  x����n�F��9O��b�$�wI�"�bG���&7Cr�ВȀ"Q��;����0T� B��s���j\�>��������t�ei�IV8�L��bh+�t)Ӻ*�"3}��L�hË́P�i�����6��4Ŕ��w�KN��'�"767ҧ�����#�T�N&�%�fL�D2D.�MQ��;���YέO=���>�گ�m��2���/�h�c����g/\���a=>L����p ���I�wCV����	�$7ܧA-]�"��S:��B�4Ȣo-b��Ǒ^�!x��O{4E�t;��vxo�^M#s��4��w��r�t��0I.�Oz��޵'8�J}y����}��,沌�*��߇Lbar�s��4:ZvO݆\S5Ak����z�@��/��s�I*.RW�:E�7r�2^'�2���ԥ��z�����H��nb��'ʘ�Hk�
GW2�M�0MSiY[+����*s50%}���q�f�捻��N|�����q7�04�P��|��"�-�����p(���Iɣ��j68t}�h��S)�S�p5�Z�Ʀ�\+�Zcu}=�Js�}H�.CO#��i@�=n���->�{��4�%���T���M5�3�m���&8�ֹ��5�2u���-M���i Mt0I��c�bw{��\�5�I4'�w7����o�2�^�xj�ޖ���͞|���34[��Ӏ��K�Ll�+p�����#��懃��6�&<�~Z��R%(�Ε]���o?+\xsYg�T��n�c��'R)�l��f��ծw��z�H�<�4i@�Ɗ�o�������	�뭥�u�J���Lh�5�6Ivu�rM{��i�ԯ!���~%���̋�N]p܄C&>h>�k�g��b�~?n2�~��/��m%>Tz�	YH��ͥ�i@k�k/p�DuQq�V�*�lv�eV�%Ҕ��R[^�Kj�	��䴺5��SӻM�4�ܻ���:8�ȥ�i��)ϒ�i�c�HA������e&8�N}P�8c� ���}p y6�5��葢��~�ߜ��&BGҶ�SpÃ�7��4��t���)�i1���O=W��d1b��L{r�\�B#)�;��N��w�?��h�(�i�4��E��'�l����%����f�
��I�LQЛ� âJ�N�+-�5:�sMʧm�{����8��:j��+�b���q:e5�� ���w�      �      x������ � �      �   /   x�3���K��K-�L�4202�54�54R00�24�20�&����� ���            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x��[s�Hǟ��Ǚ��H��u�<�����TL&/�Ҡ��ҥf��~[x[��ġf��q�������mƼ�,��&/�F$dV�xAb���W骐�W��y!r+���t�.�]4m�V�1_�|�Q�]'ق'�ŶmyQ�<�%m�o0����2��`��4؎m�_�`��[&	����L�쏂<̈������B�屟��n���b>��ȥ�5��O㏳���H��O�!��g��:϶bx���a�=J����r�c�y�<��Cۦ�Y�rȝ02W���s߲��X�����#�5����\p6d��y�![8�2^x���W�1�2�6e���|�SYpC\��D��'~�P�)`�9O���J2�37�u��z�
8;����@�u����P��cȿ+��מH�A�\�ȅ5k��T�\�l�p֘�}�������"����o���ն"��u�MO�\�%_�:^'b�����"�E!ca�I��!�����k�'"U��FكK}P��_~�e�~3Q`���[\K'��\}�:y��g�(�}����y�d��Y���N�ަ*쥕/=��?�M��.S�6IP�q��'��0%/�7y��F̊� �p���r�=g�Cbiwk7�~�p�=�{ܥˌLo��r�#�5k�9�,�"#���v'�ժJ��S��wG�?�U��ru������9l��&�ʔ��UR��͆?�ҏ\/�P�5[�𨩥A]�]U|�ɖ���q�e�Q,Q��}������������vΗt/>h8�Z�����3uN�5S'�\P�a����%m��#͌�XUZ|d�����a٭��F��%��؉�7e8�����W�<��[���,-E:�_kGЙ��˅��Kq
�=侷��
�p���Dp����/�so���n�=:�\7�}7�c^9ޛ�kf�dh�������#�xyF#���>�����2<nx�A�����p.#h~��*���{I�q"�$��{�rcrW>_PW�$�C.�n���I�f�䦊eI�꾞A���<P�!�z�E��)���S����テ���N��������NB�F�t��H����S��?ju&>5��ݥ�TƖ�d,S�#�p��2P�:uO�S�X�D5b`�s�7�r¥��	��v?�{t�#/��Y(0�y�wY����0�gi�w�29}歆ct���oR���x�`
k8�@��7�_W���\��{�Y?�k5ܩ mlr��o�u����d��p��d����B�r����k?�]P���ǃW��y� y�R����(]+M�M�1���`����	_�Xdi��F��3a�w��ܨ�p��dt��r���3/z�*�Wb[G���R�>Xk<;��سx���Z)�M>s�v?A:ζY,�K�?��ja�������.yS�ݴ���=�n� �j8���^�e"���4��IQ�
�
ag�R�p�B���ǉy]��*M��Ҹ��A�x��z��B�m�A�6�;c�,��~�r�pP�<u&Ҳv_g�&py�D̉5j�֛�|�A��J�V}�p�����!������5�iv*,�U���I�����f0�,�xX�A�=P�-��������k��5pO?�4�����/~�Aǁh%��<� c���su�`ͬNYP�p��N�6�}�[.��9!���N��Tm�5�o\y�q��֌��Y3�p�=��7���?v;��!M�A�J�������5�q$��q"�(���bt�;G��@�-�L(mN��q���X?��i8�P*6�(��R�oes*�	v1\Ż讜�;���S/�j1��4��1i'��`��#�����Oс�c��<���4ϖ�jT�Qf�ibn���2�{�ľ���iH��ji�4�q�I����	O�Zo�h�fK�6tϳx
�N�N�i8�v�ΧO��ZS�!�%��g�CPñt:fys�.�r����t���WWW����      �      x������ � �      �      x������ � �      �   X  x�}�ێ�0����Y�v��]V�RH�H@����_wZr`�E\���}��HBj���~�&X��vYu0��~@�9x7���/�^�jC�KPh��Fd}�KFӦ�ႳI!ߊF�+�Ԩ&:�������E����T�z��`'�L��dG�u!��e2��mKp�������~���DvIvr�7N+� 
V�be� Jj%wt�§��u�ÈM���O3��	etY�Z���@W��ԣ*%0Fi��6eh}D)�n2��j��W��@?}1��0�����޷���c�])���ԛ��/I�q�[�᳒�����,���v�d��lK^O�#��y��R.� DWw�fۋ�HbA�`_%�ҠD'����� k�hv�#i����!�6�Z:�2��ޙ1��#-�>�C�P��(^�mv�AL}~!!�hO��l�hoy���������m��1�w��p�z�ٖ��+��f���K�T�s���|����a��n��LRץZaj����a��r5GiVO-�խ=ؐ(��û����0ةص��!]��(Y�+ٳbgO(��\?���Q%)����sO����쬬~����wt~�      �      x������ � �      �   ,  x�}�;�1���^��dy�B�i4��@ ���,`Ƹ9�E�>����������y��?����cǢD�`�<��V�9c"^��v����dD�B9��#�;��X���qj��M0b�X�w�:�V�(0V��iHХ8[�bq�23Hn2A�~-�Rk���b:����v5�p~t���?��Ø��+�a�3���\eXO��Û����j������c��LeF���y�4M��UZ,_��}�����%�n7ytU�P�N��l�+FO툽�؍e"��O��YP�!���r]�_��=      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x����
�@�����ײw���h�f�.9 #8W��/-h�6saV����́ �FdJ���D�܂;VA���uD)$)������;��,�b쮚X��/�A�����b'
I���0+�È�J����׀wz����A�C�[?�M�coD)�!4�(?� �MJi��~��=�)�(ٌ�e�)��'oG��GX}�dM�c��.l�{���j��y��\;UkxB.�0���,�      �      x������ � �      �      x������ � �      �   %  x����N�0���)�F>�'ިX*Z�XXX.�ܦJӁ�'e�H7}�����מ��K�CY�\	"	���d ���H��m�P��0}׷1SRI0팚f�1�N�����k��c:��K���%hd�lr�MnTx
�mjz^=<��0�I��f��x;34~��FQ��N�Z�Ҕ�d�kj�����"��<�����G+�K��p�Xb̬3��0�BjOt�S�U<�4��<��%��u�]��#��x
�D?y�3�Nξ�1f��k��]"�QL��a
�{�c�}\_�      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x�˻�0�К7'
��.��⺒��O���b�_�Sl1�s��sW��      �   5   x�3�tL����,.)J,�/�,OM�4202�54"C+Cs+cKlb\1z\\\ @ �      �   L  x��TKkA>����%�~�1Q�x��^�ݙ	�3���ڈ��&З�C_}�J�7��Gp�{(�0X�H%��)l�p9�w�pc�Q���N��.�����R:r��yŐT@>�挫l�溟y�L3.��g<t�<�p��]���w<�g#��� j��e֐K����}҄���W�_��.�n�s5�VH6!��H�|H��:R����͸�<ⱟF<�M�R*R�l��! _�N1W�^�q�GZ��o��<v$�O</}��zav6�ZT�4xŇ�,0)�l:h_�1�x(�4x�?>Nb�kUpl�r9� �$��A�bK�W�b�YT�Bz�����o��V��j��w��8�T�P�i�(�$@;����穻���^�z�!������=
b�SQ����vN�=M$��8Q˖J��9�1���-x�E[O��.ǥ���Q�,�i�c~b�7�BP���	0FYG���Mi-��f<>�����	�>EC�JDD�b�zs���?R��g�G?��偗y:L��2��Rl�@�-.�I�YMlTCI7<��=��z<�����O1��      �     x����j1��ݧ�(Ȳd��$E�@�4�-s�����Wl@�f`��^0+;x�\͠�Ѡ���\�v��B���a�I|�����sw(��g�اż|ܯ�~�C�W�ir	��!s�>Rb���\l�vG� �
�Y�u��()7�h���~���ݡNE�5�\�چCu��Zn�����l�C����U@=��T#��2Lʡ�&b�k?�|?Q�T-b��6�A���	�����i9\������&�q|������ZY�b      �      x������ � �      �   �  x��V�n"I=�W���Ĺ/��͆͘6i�+�n���O�M��2m�T�|��ŋ`��(�D�J��cY�`e�g�+�(�-l!.�ˍ�˒߬
>���o��L��V<�ן_���~,x��ucv��x�
��s'�ѡ�=q���h����riIB��x��j�-��+"DR��S�A�^V��t�PU��!V�G���9�<r���+�!0-]�,�h%�$q���(�B2	�$Dt�Y!H�V��U��)d˿���u.5�)QT�����o����[q÷��ͩJJuG��~�o7�7��̻��BMrc42LGģ6�P.���{���<�D��"�L�oS8(S�[�,�HC�b�x�
� ��J�*�B���Ϟ�����w�x��轭�iO�mOƝ�am�����C�]���Ms��f���2`��CIA\`��@�B��)���!WD��*�ۄ �(sR4��,��0�A��A c��h=���V������v;˥ƕz�ysX��`4��^v͛:�����z[�|,��d�ݾs�ۿ����r��E�p4k�E�	aq�p��p�5���L�\�65��LMl�cg.0�2�Y�B�,�`��?�������M.-$M�n��Ի��E�,�:�j�mcPԦ�����d��f{T�Uz����y�M�I�#�1�`��J	M�5��h�I�ݯ(F��,c�[t�{k��apSX%d�	 �_���lv���ɘ���X=�:�y��ߛם���yy�>�����A][A�jr��N����t)��J�"���rp5&��x�R��ia�KeWP��|�8(L��I� ��C�Dn��Z"�.�.��)HdsX�w�������x^��Qk���O����7��{�a{׍gې�qwp�W�V��>��F�`���w�FUDL�du)�_�f�KJ_�> �������&B��� G�,kCЄ����M�{�o����4�f7�����,ՠ5ooR�����̶��uc�������Č��w8� 	�ґL�Ȉ��$1	M�^����(�� ��&o��u�lA�Lad<u�2JfFb��1�J�_S�!�T������k�>�5{������mmA������W��|ݘ�y��V�)�QրN3�B�@�vi�,J6I��#L��Q��,w/�A�W,��L
P�Zr�A�Q���Yh�u�,X��X�z���l���ɫ�� nk�ް�Z�z�5oչ5����W�51��ۋWD`���&xq�-�.�����
�e
_+���`��k�8��8�	P���-�4hk.�g�[Xe�\BZ~5��㤭+��1����u^��3��G;�ͱ[H{=[��O���<6Ri�$+DRd-�v�,�8B!��������z1O
�����,�ſM�m      �      x������ � �      D              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    18864    kemendag_rev    DATABASE     �   CREATE DATABASE kemendag_rev WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag_rev;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    19109    about_us    TABLE       CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.about_us;
       public            postgres    false    3            �            1259    19107    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public          postgres    false    233    3                       0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
          public          postgres    false    232            �            1259    19117    about_us_translations    TABLE     &  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    about_content character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public            postgres    false    3            �            1259    19115    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public          postgres    false    235    3                       0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
          public          postgres    false    234            �            1259    19059    albums    TABLE     �  CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    cover_image character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.albums;
       public            postgres    false    3            �            1259    19057    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public          postgres    false    225    3                       0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
          public          postgres    false    224                       1259    19391    article_categories    TABLE     8  CREATE TABLE public.article_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    parent_id bigint,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.article_categories;
       public            postgres    false    3                       1259    19389    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public          postgres    false    3    274                       0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
          public          postgres    false    273            �            1259    19002    cities    TABLE       CREATE TABLE public.cities (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_id bigint NOT NULL,
    city_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cities;
       public            postgres    false    3            �            1259    19000    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    3    217                       0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    216            �            1259    18972 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public            postgres    false    3            �            1259    18970    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    3    212                       0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    211                       1259    25128    definas    TABLE     ]  CREATE TABLE public.definas (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    hs_code bigint NOT NULL,
    uraian character varying(255) NOT NULL,
    tarif character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.definas;
       public            postgres    false    3                       1259    25126    definas_id_seq    SEQUENCE     w   CREATE SEQUENCE public.definas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.definas_id_seq;
       public          postgres    false    3    276                       0    0    definas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.definas_id_seq OWNED BY public.definas.id;
          public          postgres    false    275            �            1259    19016    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.duty_categories;
       public            postgres    false    3            �            1259    19014    duty_categories_id_seq    SEQUENCE        CREATE SEQUENCE public.duty_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public          postgres    false    3    219                       0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
          public          postgres    false    218            �            1259    19024    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id bigint NOT NULL,
    duty_category_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public            postgres    false    3            �            1259    19022 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public          postgres    false    3    221                       0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
          public          postgres    false    220                       1259    19286    event_documentations    TABLE     m  CREATE TABLE public.event_documentations (
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
       public            postgres    false    3                       1259    19284    event_documentations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_documentations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.event_documentations_id_seq;
       public          postgres    false    259    3                       0    0    event_documentations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.event_documentations_id_seq OWNED BY public.event_documentations.id;
          public          postgres    false    258            �            1259    19217    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public            postgres    false    3            �            1259    19215    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public          postgres    false    3    249                       0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
          public          postgres    false    248            �            1259    19206    events    TABLE       CREATE TABLE public.events (
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
       public            postgres    false    3            �            1259    19204    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    247    3                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    246            �            1259    19051    faq_categories    TABLE       CREATE TABLE public.faq_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.faq_categories;
       public            postgres    false    3            �            1259    19049    faq_categories_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.faq_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public          postgres    false    3    223                       0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
          public          postgres    false    222            �            1259    19195    faqs    TABLE     =  CREATE TABLE public.faqs (
    id bigint NOT NULL,
    faq_category_id integer NOT NULL,
    site_id uuid NOT NULL,
    question text NOT NULL,
    answer text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.faqs;
       public            postgres    false    3            �            1259    19193    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public          postgres    false    3    245                       0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
          public          postgres    false    244                       1259    19372    footer_translations    TABLE     �   CREATE TABLE public.footer_translations (
    id bigint NOT NULL,
    footer_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
 '   DROP TABLE public.footer_translations;
       public            postgres    false    3                       1259    19370    footer_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.footer_translations_id_seq;
       public          postgres    false    272    3                       0    0    footer_translations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.footer_translations_id_seq OWNED BY public.footer_translations.id;
          public          postgres    false    271                       1259    19364    footers    TABLE     �   CREATE TABLE public.footers (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    url character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.footers;
       public            postgres    false    3                       1259    19362    footers_id_seq    SEQUENCE     w   CREATE SEQUENCE public.footers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          postgres    false    270    3                       0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          postgres    false    269            �            1259    19087    front_banners    TABLE     �  CREATE TABLE public.front_banners (
    id bigint NOT NULL,
    "position" integer,
    type integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255),
    link character varying(255),
    site_id uuid NOT NULL,
    status_id uuid,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.front_banners;
       public            postgres    false    3            �            1259    19085    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public          postgres    false    229    3                       0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
          public          postgres    false    228            �            1259    19070    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id bigint NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public            postgres    false    3            �            1259    19068    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    227    3                       0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            
           1259    19342    investigation_categories    TABLE     �   CREATE TABLE public.investigation_categories (
    id bigint NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.investigation_categories;
       public            postgres    false    3            	           1259    19340    investigation_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.investigation_categories_id_seq;
       public          postgres    false    266    3                       0    0    investigation_categories_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.investigation_categories_id_seq OWNED BY public.investigation_categories.id;
          public          postgres    false    265                       1259    19324    investigation_data    TABLE     �  CREATE TABLE public.investigation_data (
    id uuid NOT NULL,
    investigation_category integer NOT NULL,
    product_id bigint NOT NULL,
    start_date timestamp(0) without time zone NOT NULL,
    end_date timestamp(0) without time zone,
    description text NOT NULL,
    status text NOT NULL,
    notes text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.investigation_data;
       public            postgres    false    3                       1259    19350    investigation_documents    TABLE     �   CREATE TABLE public.investigation_documents (
    id bigint NOT NULL,
    investigation_id uuid NOT NULL,
    filename character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.investigation_documents;
       public            postgres    false    3                       1259    19348    investigation_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.investigation_documents_id_seq;
       public          postgres    false    3    268                       0    0    investigation_documents_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.investigation_documents_id_seq OWNED BY public.investigation_documents.id;
          public          postgres    false    267                       1259    19334    investigation_products    TABLE     �   CREATE TABLE public.investigation_products (
    id bigint NOT NULL,
    product_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.investigation_products;
       public            postgres    false    3                       1259    19332    investigation_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investigation_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.investigation_products_id_seq;
       public          postgres    false    3    264                        0    0    investigation_products_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.investigation_products_id_seq OWNED BY public.investigation_products.id;
          public          postgres    false    263            �            1259    18892    log_activities    TABLE     �  CREATE TABLE public.log_activities (
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
       public            postgres    false    3            �            1259    18890    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public          postgres    false    3    201            !           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
          public          postgres    false    200            �            1259    19136    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.main_duties;
       public            postgres    false    3            �            1259    19134    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public          postgres    false    237    3            "           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
          public          postgres    false    236            �            1259    19144    main_duty_translations    TABLE     h  CREATE TABLE public.main_duty_translations (
    id bigint NOT NULL,
    main_duty_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    mainduty character varying(255) NOT NULL,
    function text NOT NULL
);
 *   DROP TABLE public.main_duty_translations;
       public            postgres    false    3            �            1259    19142    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public          postgres    false    239    3            #           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
          public          postgres    false    238            �            1259    18867 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false    3            �            1259    18865    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    3    197            $           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    18923    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false    3            �            1259    18934    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false    3            �            1259    19249    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public            postgres    false    3            �            1259    19247    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public          postgres    false    3    253            %           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
          public          postgres    false    252            �            1259    19238 	   officials    TABLE     j  CREATE TABLE public.officials (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    userpic character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.officials;
       public            postgres    false    3            �            1259    19236    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public          postgres    false    3    251            &           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
          public          postgres    false    250            �            1259    18883    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false    3            �            1259    18903    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false    3            �            1259    18901    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    3    203            '           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    202            �            1259    19174    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public            postgres    false    3            �            1259    19172    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public          postgres    false    3    243            (           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
          public          postgres    false    242            �            1259    19163    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type_id smallint NOT NULL,
    category_id bigint NOT NULL,
    category_child_id bigint,
    years integer,
    reference_custom character varying(255),
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    keywords character varying(255),
    description character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    published_date timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posts;
       public            postgres    false    3            �            1259    19161    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    3    241            )           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    240                       1259    19278    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public            postgres    false    3                        1259    19276    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public          postgres    false    257    3            *           0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
          public          postgres    false    256            �            1259    19098    publications    TABLE       CREATE TABLE public.publications (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_id integer NOT NULL,
    section_id integer,
    publish_year character varying(255),
    cover_image character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    file character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    ref_code character varying
);
     DROP TABLE public.publications;
       public            postgres    false    3            �            1259    19096    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public          postgres    false    3    231            +           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
          public          postgres    false    230                       1259    19302    regional_trade_offices    TABLE     D  CREATE TABLE public.regional_trade_offices (
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
       public            postgres    false    3                       1259    19300    regional_trade_offices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regional_trade_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.regional_trade_offices_id_seq;
       public          postgres    false    3    261            ,           0    0    regional_trade_offices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.regional_trade_offices_id_seq OWNED BY public.regional_trade_offices.id;
          public          postgres    false    260            �            1259    18988    regions    TABLE     �   CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public            postgres    false    3            �            1259    18986    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    3    215            -           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    214            �            1259    18945    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false    3            �            1259    18914    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false    3            �            1259    18912    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    205    3            .           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    204            �            1259    18965    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public            postgres    false    3            �            1259    18960    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public            postgres    false    3            �            1259    19270    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public            postgres    false    3            �            1259    19268    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public          postgres    false    255    3            /           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
          public          postgres    false    254            �            1259    18873    users    TABLE       CREATE TABLE public.users (
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
       public            postgres    false    3            �            1259    18978    videos    TABLE       CREATE TABLE public.videos (
    id uuid NOT NULL,
    video_id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    thumbnail character varying(255) NOT NULL,
    thumbnail_small character varying(255) NOT NULL,
    player character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.videos;
       public            postgres    false    3            �           2604    19112    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    19120    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    19062 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    19394    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    19005 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18975    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    25131 
   definas id    DEFAULT     h   ALTER TABLE ONLY public.definas ALTER COLUMN id SET DEFAULT nextval('public.definas_id_seq'::regclass);
 9   ALTER TABLE public.definas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            �           2604    19019    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    19027    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    19289    event_documentations id    DEFAULT     �   ALTER TABLE ONLY public.event_documentations ALTER COLUMN id SET DEFAULT nextval('public.event_documentations_id_seq'::regclass);
 F   ALTER TABLE public.event_documentations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    259    259            �           2604    19220    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    19209 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    19054    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    19198    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    19375    footer_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_translations_id_seq'::regclass);
 E   ALTER TABLE public.footer_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            �           2604    19367 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            �           2604    19090    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    19073 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    19345    investigation_categories id    DEFAULT     �   ALTER TABLE ONLY public.investigation_categories ALTER COLUMN id SET DEFAULT nextval('public.investigation_categories_id_seq'::regclass);
 J   ALTER TABLE public.investigation_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    19353    investigation_documents id    DEFAULT     �   ALTER TABLE ONLY public.investigation_documents ALTER COLUMN id SET DEFAULT nextval('public.investigation_documents_id_seq'::regclass);
 I   ALTER TABLE public.investigation_documents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    19337    investigation_products id    DEFAULT     �   ALTER TABLE ONLY public.investigation_products ALTER COLUMN id SET DEFAULT nextval('public.investigation_products_id_seq'::regclass);
 H   ALTER TABLE public.investigation_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            �           2604    18895    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    19139    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    19147    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    18870    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            �           2604    19252    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    19241    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    18906    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    19177    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    19166    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    19281    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            �           2604    19101    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    19305    regional_trade_offices id    DEFAULT     �   ALTER TABLE ONLY public.regional_trade_offices ALTER COLUMN id SET DEFAULT nextval('public.regional_trade_offices_id_seq'::regclass);
 H   ALTER TABLE public.regional_trade_offices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    261    261            �           2604    18991 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    18917    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    19273    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            �          0    19109    about_us 
   TABLE DATA           j   COPY public.about_us (id, status_id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    233            �          0    19117    about_us_translations 
   TABLE DATA           o   COPY public.about_us_translations (id, about_us_id, locale, about_content, created_at, updated_at) FROM stdin;
    public          postgres    false    235           �          0    19059    albums 
   TABLE DATA           �   COPY public.albums (id, name, slug, description, cover_image, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    225                     0    19391    article_categories 
   TABLE DATA           �   COPY public.article_categories (id, category_name, site_id, parent_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    274           �          0    19002    cities 
   TABLE DATA           ^   COPY public.cities (id, country_id, region_id, city_name, created_at, updated_at) FROM stdin;
    public          postgres    false    217   �       �          0    18972 	   countries 
   TABLE DATA           M   COPY public.countries (id, country_name, created_at, updated_at) FROM stdin;
    public          postgres    false    212                     0    25128    definas 
   TABLE DATA           y   COPY public.definas (id, country_id, hs_code, uraian, tarif, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    276   9        �          0    19016    duty_categories 
   TABLE DATA           f   COPY public.duty_categories (id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    219           �          0    19024    duty_category_translations 
   TABLE DATA           g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public          postgres    false    221           �          0    19286    event_documentations 
   TABLE DATA           �   COPY public.event_documentations (id, event_id, file_title, file, video_id, video_title, thumbnail, thumbnail_small, player) FROM stdin;
    public          postgres    false    259           �          0    19217    event_translations 
   TABLE DATA           \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public          postgres    false    249           �          0    19206    events 
   TABLE DATA           �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    247           �          0    19051    faq_categories 
   TABLE DATA           t   COPY public.faq_categories (id, category_name, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    223           �          0    19195    faqs 
   TABLE DATA           ~   COPY public.faqs (id, faq_category_id, site_id, question, answer, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    245                      0    19372    footer_translations 
   TABLE DATA           J   COPY public.footer_translations (id, footer_id, locale, name) FROM stdin;
    public          postgres    false    272           �          0    19364    footers 
   TABLE DATA           S   COPY public.footers (id, site_id, urutan, url, created_at, updated_at) FROM stdin;
    public          postgres    false    270           �          0    19087    front_banners 
   TABLE DATA           �   COPY public.front_banners (id, "position", type, title, image, description, link, site_id, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    229           �          0    19070    images 
   TABLE DATA           Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public          postgres    false    227           �          0    19342    investigation_categories 
   TABLE DATA           ]   COPY public.investigation_categories (id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    266           �          0    19324    investigation_data 
   TABLE DATA           �   COPY public.investigation_data (id, investigation_category, product_id, start_date, end_date, description, status, notes, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    262           �          0    19350    investigation_documents 
   TABLE DATA           i   COPY public.investigation_documents (id, investigation_id, filename, created_at, updated_at) FROM stdin;
    public          postgres    false    268           �          0    19334    investigation_products 
   TABLE DATA           Z   COPY public.investigation_products (id, product_name, created_at, updated_at) FROM stdin;
    public          postgres    false    264           �          0    18892    log_activities 
   TABLE DATA           w   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    201           �          0    19136    main_duties 
   TABLE DATA           b   COPY public.main_duties (id, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    237   �       �          0    19144    main_duty_translations 
   TABLE DATA           z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public          postgres    false    239           �          0    18867 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197           �          0    18923    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    206   b       �          0    18934    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    207           �          0    19249    official_translations 
   TABLE DATA           U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public          postgres    false    253   6       �          0    19238 	   officials 
   TABLE DATA           x   COPY public.officials (id, site_id, name, address, userpic, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    251           �          0    18883    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    199           �          0    18903    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    203           �          0    19174    post_translations 
   TABLE DATA           V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public          postgres    false    243   �        �          0    19163    posts 
   TABLE DATA           �   COPY public.posts (id, site_id, type_id, category_id, category_child_id, years, reference_custom, source, file, reporter_id, status_id, keywords, description, created_by, updated_by, published_date, created_at, updated_at) FROM stdin;
    public          postgres    false    241           �          0    19278    publication_categories 
   TABLE DATA           d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    257           �          0    19098    publications 
   TABLE DATA           �   COPY public.publications (id, site_id, category_id, section_id, publish_year, cover_image, title, link, file, created_by, updated_by, created_at, updated_at, ref_code) FROM stdin;
    public          postgres    false    231   /       �          0    19302    regional_trade_offices 
   TABLE DATA           �   COPY public.regional_trade_offices (id, city_id, address, phone, fax, website, email, official_1, official_2, latitude, longitude, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    261           �          0    18988    regions 
   TABLE DATA           V   COPY public.regions (id, country_id, region_name, created_at, updated_at) FROM stdin;
    public          postgres    false    215           �          0    18945    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    208           �          0    18914    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    205   D        �          0    18965    sites 
   TABLE DATA           F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public          postgres    false    210   ?        �          0    18960    statuses 
   TABLE DATA           K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public          postgres    false    209   V       �          0    19270    units 
   TABLE DATA           g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    255          �          0    18873    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public          postgres    false    198           �          0    18978    videos 
   TABLE DATA           �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    213   �       0           0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
          public          postgres    false    232            1           0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
          public          postgres    false    234            2           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
          public          postgres    false    224            3           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 49, true);
          public          postgres    false    273            4           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    216            5           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 2, true);
          public          postgres    false    211            6           0    0    definas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.definas_id_seq', 1, false);
          public          postgres    false    275            7           0    0    duty_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.duty_categories_id_seq', 1, false);
          public          postgres    false    218            8           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 1, false);
          public          postgres    false    220            9           0    0    event_documentations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.event_documentations_id_seq', 1, false);
          public          postgres    false    258            :           0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 1, false);
          public          postgres    false    248            ;           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public          postgres    false    246            <           0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
          public          postgres    false    222            =           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
          public          postgres    false    244            >           0    0    footer_translations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.footer_translations_id_seq', 1, false);
          public          postgres    false    271            ?           0    0    footers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.footers_id_seq', 1, false);
          public          postgres    false    269            @           0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
          public          postgres    false    228            A           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    226            B           0    0    investigation_categories_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.investigation_categories_id_seq', 1, false);
          public          postgres    false    265            C           0    0    investigation_documents_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.investigation_documents_id_seq', 1, false);
          public          postgres    false    267            D           0    0    investigation_products_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.investigation_products_id_seq', 1, false);
          public          postgres    false    263            E           0    0    log_activities_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.log_activities_id_seq', 72, true);
          public          postgres    false    200            F           0    0    main_duties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, false);
          public          postgres    false    236            G           0    0    main_duty_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 1, false);
          public          postgres    false    238            H           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 43, true);
          public          postgres    false    196            I           0    0    official_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.official_translations_id_seq', 1, false);
          public          postgres    false    252            J           0    0    officials_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.officials_id_seq', 1, false);
          public          postgres    false    250            K           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
          public          postgres    false    202            L           0    0    post_translations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.post_translations_id_seq', 2, true);
          public          postgres    false    242            M           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    240            N           0    0    publication_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publication_categories_id_seq', 7, true);
          public          postgres    false    256            O           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
          public          postgres    false    230            P           0    0    regional_trade_offices_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.regional_trade_offices_id_seq', 1, false);
          public          postgres    false    260            Q           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
          public          postgres    false    214            R           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 1, true);
          public          postgres    false    204            S           0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
          public          postgres    false    254            �           2606    19114    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public            postgres    false    233            �           2606    19127 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public            postgres    false    235    235            �           2606    19125 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public            postgres    false    235            �           2606    19067    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public            postgres    false    225            (           2606    19396 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public            postgres    false    274            �           2606    19007    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    217            �           2606    18977    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    212            *           2606    25136    definas definas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.definas
    ADD CONSTRAINT definas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.definas DROP CONSTRAINT definas_pkey;
       public            postgres    false    276            �           2606    19021 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public            postgres    false    219            �           2606    19034 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public            postgres    false    221    221            �           2606    19032 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public            postgres    false    221                       2606    19294 .   event_documentations event_documentations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_pkey;
       public            postgres    false    259                       2606    19227 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public            postgres    false    249    249                       2606    19225 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public            postgres    false    249                       2606    19235 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public            postgres    false    249            �           2606    19214    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    247            �           2606    19056 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public            postgres    false    223            �           2606    19203    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public            postgres    false    245            #           2606    19382 ?   footer_translations footer_translations_footer_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_footer_id_locale_unique UNIQUE (footer_id, locale);
 i   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_footer_id_locale_unique;
       public            postgres    false    272    272            &           2606    19380 ,   footer_translations footer_translations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_pkey;
       public            postgres    false    272            !           2606    19369    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            postgres    false    270            �           2606    19095     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public            postgres    false    229            �           2606    19078    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227                       2606    19347 6   investigation_categories investigation_categories_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.investigation_categories
    ADD CONSTRAINT investigation_categories_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.investigation_categories DROP CONSTRAINT investigation_categories_pkey;
       public            postgres    false    266                       2606    19331 *   investigation_data investigation_data_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.investigation_data
    ADD CONSTRAINT investigation_data_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.investigation_data DROP CONSTRAINT investigation_data_pkey;
       public            postgres    false    262                       2606    19355 4   investigation_documents investigation_documents_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.investigation_documents
    ADD CONSTRAINT investigation_documents_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.investigation_documents DROP CONSTRAINT investigation_documents_pkey;
       public            postgres    false    268                       2606    19339 2   investigation_products investigation_products_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.investigation_products
    ADD CONSTRAINT investigation_products_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.investigation_products DROP CONSTRAINT investigation_products_pkey;
       public            postgres    false    264            �           2606    18900 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public            postgres    false    201            �           2606    19141    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public            postgres    false    237            �           2606    19154 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public            postgres    false    239    239            �           2606    19152 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public            postgres    false    239            �           2606    18872    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            �           2606    18933 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    206    206    206            �           2606    18944 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    207    207    207                       2606    19259 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public            postgres    false    253    253                       2606    19257 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public            postgres    false    253                       2606    19267 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public            postgres    false    253                       2606    19246    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public            postgres    false    251            �           2606    18911    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    203            �           2606    19182 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public            postgres    false    243            �           2606    19184 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public            postgres    false    243    243            �           2606    19192 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public            postgres    false    243            �           2606    19171    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    241                       2606    19283 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public            postgres    false    257            �           2606    19106    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public            postgres    false    231                       2606    19310 2   regional_trade_offices regional_trade_offices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.regional_trade_offices
    ADD CONSTRAINT regional_trade_offices_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.regional_trade_offices DROP CONSTRAINT regional_trade_offices_pkey;
       public            postgres    false    261            �           2606    18993    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    215            �           2606    18959 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    208    208            �           2606    18922    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    205            �           2606    18969    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public            postgres    false    210            �           2606    18964    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    209                       2606    19275    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public            postgres    false    255            �           2606    18882    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    198            �           2606    18880    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    198            �           2606    18985    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    213            �           1259    19133 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public            postgres    false    235            �           1259    19013    cities_region_id_index    INDEX     N   CREATE INDEX cities_region_id_index ON public.cities USING btree (region_id);
 *   DROP INDEX public.cities_region_id_index;
       public            postgres    false    217            �           1259    19040 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public            postgres    false    221                       1259    19233    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public            postgres    false    249            $           1259    19388     footer_translations_locale_index    INDEX     b   CREATE INDEX footer_translations_locale_index ON public.footer_translations USING btree (locale);
 4   DROP INDEX public.footer_translations_locale_index;
       public            postgres    false    272            �           1259    19084    images_album_id_index    INDEX     L   CREATE INDEX images_album_id_index ON public.images USING btree (album_id);
 )   DROP INDEX public.images_album_id_index;
       public            postgres    false    227            �           1259    19160 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public            postgres    false    239            �           1259    18926 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    206    206            �           1259    18937 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    207    207            	           1259    19265 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public            postgres    false    253            �           1259    18889    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    199            �           1259    19190    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public            postgres    false    243            �           1259    18999    regions_country_id_index    INDEX     R   CREATE INDEX regions_country_id_index ON public.regions USING btree (country_id);
 ,   DROP INDEX public.regions_country_id_index;
       public            postgres    false    215            3           2606    19128 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public          postgres    false    3046    235    233            0           2606    19008    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public          postgres    false    3023    217    215            1           2606    19035 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public          postgres    false    3028    219    221            8           2606    19295 :   event_documentations event_documentations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_event_id_foreign;
       public          postgres    false    3071    247    259            6           2606    19228 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public          postgres    false    3071    249    247            :           2606    19383 9   footer_translations footer_translations_footer_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.footer_translations
    ADD CONSTRAINT footer_translations_footer_id_foreign FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.footer_translations DROP CONSTRAINT footer_translations_footer_id_foreign;
       public          postgres    false    3105    272    270            2           2606    19079    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public          postgres    false    3037    227    225            9           2606    19356 H   investigation_documents investigation_documents_investigation_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.investigation_documents
    ADD CONSTRAINT investigation_documents_investigation_id_foreign FOREIGN KEY (investigation_id) REFERENCES public.investigation_data(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.investigation_documents DROP CONSTRAINT investigation_documents_investigation_id_foreign;
       public          postgres    false    268    262    3097            4           2606    19155 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public          postgres    false    239    3053    237            +           2606    18927 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    3002    206    203            ,           2606    18938 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    3004    205    207            7           2606    19260 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public          postgres    false    253    251    3080            5           2606    19185 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public          postgres    false    243    3060    241            /           2606    18994 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public          postgres    false    215    212    3018            -           2606    18948 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    208    203    3002            .           2606    18953 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    3004    205    208           