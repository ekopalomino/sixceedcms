PGDMP     )                    x            kemendag    11.8    11.2 >    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ^           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            _           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16490    log_activities    TABLE     i  CREATE TABLE public.log_activities (
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
       public       postgres    false    210    3            `           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    209            �            1259    16396 
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
       public       postgres    false    3    197            a           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
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
       public         postgres    false    3            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
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
       public       postgres    false    3    201            b           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    200            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
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
       public       postgres    false    203    3            c           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
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
       public         postgres    false    3            �            1259    16402    users    TABLE       CREATE TABLE public.users (
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
       public         postgres    false    3            �
           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            X          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210            K          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197            R          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204            S          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205            M          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199            O          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201            T          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206            Q          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203            V          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208            U          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207            L          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198            d           0    0    log_activities_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.log_activities_id_seq', 4, true);
            public       postgres    false    209            e           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
            public       postgres    false    196            f           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200            g           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202            �
           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    210            �
           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �
           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            �
           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    205    205    205            �
           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    201            �
           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            �
           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203            �
           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            �
           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �
           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            �
           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198            �
           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            �
           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �
           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �
           2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    2748    201    204            �
           2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    205    2750    203            �
           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    206    2748    201            �
           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    206    203    2750            X   H  x��MK�@@�ɯ�c&��ȦMO��B��m���&;i��MȦ(�zQA̡^+{����Qo��h-<55�\��ؾS}���Cգ�ʾoSB*<�Q�}���rSX7���j[K:g[b�����z�Q���{�[5o����F;s�͋��P���R��U�1�۶�fKӓ�'!�0Z�nVwWP�
��â��	w��xH���*Tg��k���'�PRO��LYpQ$����4b��:/�T`>Q�XDI@�8���%C�g?��h�y(�r1�|�+Զ�u���VI��󅷵�Vdؕʚ�9e�<'�ɹ߱���%�������C���6�Xp      K   �   x�U�Q�0���q�۲���:�i2�)�׷Q�9��� 5��P�?#c��*�b��4iC���v��^s9KQSߒPF�^j���_-�l���W[�q�c�[�y�zβ����6a��W��A���\8�I��g��� x7aU+      R      x������ � �      S   J   x�3�άHNMM����OI�)��	-N-�43�LJLK2�56I3�5147ӵ440�M1NIN3�4IM�H����� ���      M      x������ � �      O   �   x����
�0E��+����V�J� ��K()4��^��\���=�=�2�����?����m��L��Le�e���Z,�����	0���� )��x�/B'o�V9��,B/LT��J��.C��UX��h&����$J�1���2�*��J�d�~�"��G2%%��L2����K-��.U��e؅Ly/u?��q7�3�A�L4!�c�	+�.�      T   ?   x�̹ !���1{��ׁD��LCe�n{��~�ƕCNRҒ��$'=p������h&v      Q   E   x�3�tL����,.)J,�/�,OM�4202�50�54Q04�25�22�&�e�Y�Z�M����	61�=... `pW      V   d  x����j[1@׾_q`�ޏ��i
-t�͌fdD��p}���SȢ����9�#�HQe����)U�	KH,��wl}�-tj��2
T�f�＿3�I+���0����3 A�m5<�wm�����6?JgYq�H�ˁ��ϟ�O/�u~�S;v\n�S�l�`ltC�;��'t������s��
k��?�/}��T�d&�P�0�K���]k���}��4����8
�^�v3�}FUl��1"Х����rr����W��c?��g�_�n��6�n�9�.�f7�I�V��4�W��-�.x�h�<^��9HQkH��;����e��߯��2A��Φ?��i�J��      U   t   x��̽1@�:���l���u�p�5�cK4���a 
�W|�Kj���ܾ1���!G8��	Q��������@r@Y۲��˪)��L�S����0�(t�C�<�l��=n3����Xk� })o      L   �   x�m�=S�0Dk�WP�=͝t�I�p� ECÐI#�����Q��'�(�����s6�X��U�IB�sՁK��)�y��4�8�<�6�m�韎�s���f���>${���������x~���v�հ�?�|��٩���gIB%}�����bv>:���i�(@|E�G�#6�E�%�T2Y�.���e�@����1����7�s�O��U۶��E      >    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ^           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            _           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16490    log_activities    TABLE     i  CREATE TABLE public.log_activities (
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
       public       postgres    false    210    3            `           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    209            �            1259    16396 
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
       public       postgres    false    3    197            a           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
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
       public         postgres    false    3            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
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
       public       postgres    false    3    201            b           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    200            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
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
       public       postgres    false    203    3            c           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
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
       public         postgres    false    3            �            1259    16402    users    TABLE       CREATE TABLE public.users (
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
       public         postgres    false    3            �
           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            X          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210   	       K          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   �
       R          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204   z       S          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205   �       M          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199   �       O          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201          T          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206           Q          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203   O       V          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208   �       U          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207          L          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198   �       d           0    0    log_activities_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.log_activities_id_seq', 4, true);
            public       postgres    false    209            e           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
            public       postgres    false    196            f           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200            g           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202            �
           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    210            �
           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �
           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            �
           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    205    205    205            �
           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    201            �
           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            �
           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203            �
           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            �
           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �
           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            �
           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198            �
           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            �
           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �
           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �
           2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    2748    201    204            �
           2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    205    2750    203            �
           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    206    2748    201            �
           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    206    203    2750           