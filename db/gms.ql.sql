PGDMP      2                }            GMS    17.2    17.2 `    p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            s           1262    40979    GMS    DATABASE     �   CREATE DATABASE "GMS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "GMS";
                     postgres    false                        2615    57929    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            t           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                        postgres    false    5            u           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                        postgres    false    5            �            1259    58023    AdminLog    TABLE     �   CREATE TABLE public."AdminLog" (
    id integer NOT NULL,
    "adminId" integer NOT NULL,
    action text NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."AdminLog";
       public         heap r       postgres    false    5            �            1259    58022    AdminLog_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdminLog_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."AdminLog_id_seq";
       public               postgres    false    5    235            v           0    0    AdminLog_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."AdminLog_id_seq" OWNED BY public."AdminLog".id;
          public               postgres    false    234            �            1259    57961    Appointment    TABLE     ?  CREATE TABLE public."Appointment" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "serviceId" integer NOT NULL,
    status text DEFAULT 'pending'::text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "bookedDate" timestamp(3) without time zone NOT NULL
);
 !   DROP TABLE public."Appointment";
       public         heap r       postgres    false    5            �            1259    57960    Appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Appointment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Appointment_id_seq";
       public               postgres    false    223    5            w           0    0    Appointment_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Appointment_id_seq" OWNED BY public."Appointment".id;
          public               postgres    false    222            �            1259    59388    BookingService    TABLE     �  CREATE TABLE public."BookingService" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "serviceId" integer NOT NULL,
    "categoryId" integer NOT NULL,
    description text,
    "bookedDate" timestamp(3) without time zone NOT NULL,
    status text DEFAULT 'Pending'::text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 $   DROP TABLE public."BookingService";
       public         heap r       postgres    false    5            �            1259    59387    BookingService_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BookingService_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."BookingService_id_seq";
       public               postgres    false    5    237            x           0    0    BookingService_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."BookingService_id_seq" OWNED BY public."BookingService".id;
          public               postgres    false    236            �            1259    57972    Payment    TABLE     �  CREATE TABLE public."Payment" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "appointmentId" integer NOT NULL,
    amount double precision NOT NULL,
    "paymentMethod" text NOT NULL,
    "paymentStatus" text DEFAULT 'pending'::text NOT NULL,
    "paymentDate" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."Payment";
       public         heap r       postgres    false    5            �            1259    57971    Payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Payment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Payment_id_seq";
       public               postgres    false    5    225            y           0    0    Payment_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Payment_id_seq" OWNED BY public."Payment".id;
          public               postgres    false    224            �            1259    57993    Review    TABLE     �   CREATE TABLE public."Review" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "serviceId" integer NOT NULL,
    rating integer NOT NULL,
    comment text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."Review";
       public         heap r       postgres    false    5            �            1259    57992    Review_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Review_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Review_id_seq";
       public               postgres    false    5    229            z           0    0    Review_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Review_id_seq" OWNED BY public."Review".id;
          public               postgres    false    228            �            1259    57951    Service    TABLE     F  CREATE TABLE public."Service" (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    price double precision NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "categoryId" integer NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Service";
       public         heap r       postgres    false    5            �            1259    58013    ServiceCategory    TABLE     �   CREATE TABLE public."ServiceCategory" (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 %   DROP TABLE public."ServiceCategory";
       public         heap r       postgres    false    5            �            1259    58012    ServiceCategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ServiceCategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ServiceCategory_id_seq";
       public               postgres    false    5    233            {           0    0    ServiceCategory_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ServiceCategory_id_seq" OWNED BY public."ServiceCategory".id;
          public               postgres    false    232            �            1259    57950    Service_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Service_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Service_id_seq";
       public               postgres    false    221    5            |           0    0    Service_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Service_id_seq" OWNED BY public."Service".id;
          public               postgres    false    220            �            1259    57940    User    TABLE     	  CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    role text DEFAULT 'customer'::text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."User";
       public         heap r       postgres    false    5            �            1259    57939    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public               postgres    false    5    219            }           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public               postgres    false    218            �            1259    57983    Vehicle    TABLE       CREATE TABLE public."Vehicle" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    make text NOT NULL,
    model text NOT NULL,
    year integer NOT NULL,
    "licensePlate" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."Vehicle";
       public         heap r       postgres    false    5            �            1259    57982    Vehicle_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Vehicle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Vehicle_id_seq";
       public               postgres    false    5    227            ~           0    0    Vehicle_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Vehicle_id_seq" OWNED BY public."Vehicle".id;
          public               postgres    false    226            �            1259    57930    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap r       postgres    false    5            �            1259    58003    payment_transactions    TABLE       CREATE TABLE public.payment_transactions (
    id integer NOT NULL,
    "paymentId" integer NOT NULL,
    "transactionId" text NOT NULL,
    "paymentStatus" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 (   DROP TABLE public.payment_transactions;
       public         heap r       postgres    false    5            �            1259    58002    payment_transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.payment_transactions_id_seq;
       public               postgres    false    231    5                       0    0    payment_transactions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.payment_transactions_id_seq OWNED BY public.payment_transactions.id;
          public               postgres    false    230            �           2604    58026    AdminLog id    DEFAULT     n   ALTER TABLE ONLY public."AdminLog" ALTER COLUMN id SET DEFAULT nextval('public."AdminLog_id_seq"'::regclass);
 <   ALTER TABLE public."AdminLog" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    235    235            �           2604    57964    Appointment id    DEFAULT     t   ALTER TABLE ONLY public."Appointment" ALTER COLUMN id SET DEFAULT nextval('public."Appointment_id_seq"'::regclass);
 ?   ALTER TABLE public."Appointment" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    59391    BookingService id    DEFAULT     z   ALTER TABLE ONLY public."BookingService" ALTER COLUMN id SET DEFAULT nextval('public."BookingService_id_seq"'::regclass);
 B   ALTER TABLE public."BookingService" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    237    237            �           2604    57975 
   Payment id    DEFAULT     l   ALTER TABLE ONLY public."Payment" ALTER COLUMN id SET DEFAULT nextval('public."Payment_id_seq"'::regclass);
 ;   ALTER TABLE public."Payment" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    57996 	   Review id    DEFAULT     j   ALTER TABLE ONLY public."Review" ALTER COLUMN id SET DEFAULT nextval('public."Review_id_seq"'::regclass);
 :   ALTER TABLE public."Review" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            �           2604    57954 
   Service id    DEFAULT     l   ALTER TABLE ONLY public."Service" ALTER COLUMN id SET DEFAULT nextval('public."Service_id_seq"'::regclass);
 ;   ALTER TABLE public."Service" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220    221            �           2604    58016    ServiceCategory id    DEFAULT     |   ALTER TABLE ONLY public."ServiceCategory" ALTER COLUMN id SET DEFAULT nextval('public."ServiceCategory_id_seq"'::regclass);
 C   ALTER TABLE public."ServiceCategory" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232    233            �           2604    57943    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    219    219            �           2604    57986 
   Vehicle id    DEFAULT     l   ALTER TABLE ONLY public."Vehicle" ALTER COLUMN id SET DEFAULT nextval('public."Vehicle_id_seq"'::regclass);
 ;   ALTER TABLE public."Vehicle" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    58006    payment_transactions id    DEFAULT     �   ALTER TABLE ONLY public.payment_transactions ALTER COLUMN id SET DEFAULT nextval('public.payment_transactions_id_seq'::regclass);
 F   ALTER TABLE public.payment_transactions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            k          0    58023    AdminLog 
   TABLE DATA           U   COPY public."AdminLog" (id, "adminId", action, description, "createdAt") FROM stdin;
    public               postgres    false    235   'z       _          0    57961    Appointment 
   TABLE DATA           e   COPY public."Appointment" (id, "userId", "serviceId", status, "createdAt", "bookedDate") FROM stdin;
    public               postgres    false    223   Dz       m          0    59388    BookingService 
   TABLE DATA           �   COPY public."BookingService" (id, "userId", "serviceId", "categoryId", description, "bookedDate", status, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    237   az       a          0    57972    Payment 
   TABLE DATA           �   COPY public."Payment" (id, "userId", "appointmentId", amount, "paymentMethod", "paymentStatus", "paymentDate", "createdAt") FROM stdin;
    public               postgres    false    225   ~z       e          0    57993    Review 
   TABLE DATA           [   COPY public."Review" (id, "userId", "serviceId", rating, comment, "createdAt") FROM stdin;
    public               postgres    false    229   �z       ]          0    57951    Service 
   TABLE DATA           i   COPY public."Service" (id, name, description, price, "createdAt", "categoryId", "updatedAt") FROM stdin;
    public               postgres    false    221   �z       i          0    58013    ServiceCategory 
   TABLE DATA           O   COPY public."ServiceCategory" (id, name, description, "createdAt") FROM stdin;
    public               postgres    false    233   #{       [          0    57940    User 
   TABLE DATA           N   COPY public."User" (id, name, email, password, role, "createdAt") FROM stdin;
    public               postgres    false    219   �{       c          0    57983    Vehicle 
   TABLE DATA           a   COPY public."Vehicle" (id, "userId", make, model, year, "licensePlate", "createdAt") FROM stdin;
    public               postgres    false    227   �       Y          0    57930    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public               postgres    false    217   j�       g          0    58003    payment_transactions 
   TABLE DATA           n   COPY public.payment_transactions (id, "paymentId", "transactionId", "paymentStatus", "createdAt") FROM stdin;
    public               postgres    false    231   Ӂ       �           0    0    AdminLog_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."AdminLog_id_seq"', 1, false);
          public               postgres    false    234            �           0    0    Appointment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Appointment_id_seq"', 1, false);
          public               postgres    false    222            �           0    0    BookingService_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."BookingService_id_seq"', 52, true);
          public               postgres    false    236            �           0    0    Payment_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Payment_id_seq"', 1, false);
          public               postgres    false    224            �           0    0    Review_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Review_id_seq"', 1, false);
          public               postgres    false    228            �           0    0    ServiceCategory_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."ServiceCategory_id_seq"', 8, true);
          public               postgres    false    232            �           0    0    Service_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Service_id_seq"', 14, true);
          public               postgres    false    220            �           0    0    User_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."User_id_seq"', 16, true);
          public               postgres    false    218            �           0    0    Vehicle_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Vehicle_id_seq"', 20, true);
          public               postgres    false    226            �           0    0    payment_transactions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.payment_transactions_id_seq', 1, false);
          public               postgres    false    230            �           2606    58031    AdminLog AdminLog_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."AdminLog"
    ADD CONSTRAINT "AdminLog_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."AdminLog" DROP CONSTRAINT "AdminLog_pkey";
       public                 postgres    false    235            �           2606    57970    Appointment Appointment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Appointment"
    ADD CONSTRAINT "Appointment_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Appointment" DROP CONSTRAINT "Appointment_pkey";
       public                 postgres    false    223            �           2606    59397 "   BookingService BookingService_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."BookingService"
    ADD CONSTRAINT "BookingService_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."BookingService" DROP CONSTRAINT "BookingService_pkey";
       public                 postgres    false    237            �           2606    57981    Payment Payment_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_pkey";
       public                 postgres    false    225            �           2606    58001    Review Review_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "Review_pkey";
       public                 postgres    false    229            �           2606    58021 $   ServiceCategory ServiceCategory_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ServiceCategory"
    ADD CONSTRAINT "ServiceCategory_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."ServiceCategory" DROP CONSTRAINT "ServiceCategory_pkey";
       public                 postgres    false    233            �           2606    57959    Service Service_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Service"
    ADD CONSTRAINT "Service_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Service" DROP CONSTRAINT "Service_pkey";
       public                 postgres    false    221            �           2606    57949    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public                 postgres    false    219            �           2606    57991    Vehicle Vehicle_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Vehicle"
    ADD CONSTRAINT "Vehicle_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Vehicle" DROP CONSTRAINT "Vehicle_pkey";
       public                 postgres    false    227            �           2606    57938 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public                 postgres    false    217            �           2606    58011 .   payment_transactions payment_transactions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.payment_transactions
    ADD CONSTRAINT payment_transactions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.payment_transactions DROP CONSTRAINT payment_transactions_pkey;
       public                 postgres    false    231            �           1259    58358    Service_name_key    INDEX     O   CREATE UNIQUE INDEX "Service_name_key" ON public."Service" USING btree (name);
 &   DROP INDEX public."Service_name_key";
       public                 postgres    false    221            �           1259    58032    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public                 postgres    false    219            �           1259    73747    Vehicle_licensePlate_key    INDEX     a   CREATE UNIQUE INDEX "Vehicle_licensePlate_key" ON public."Vehicle" USING btree ("licensePlate");
 .   DROP INDEX public."Vehicle_licensePlate_key";
       public                 postgres    false    227            �           2606    58073    AdminLog AdminLog_adminId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdminLog"
    ADD CONSTRAINT "AdminLog_adminId_fkey" FOREIGN KEY ("adminId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public."AdminLog" DROP CONSTRAINT "AdminLog_adminId_fkey";
       public               postgres    false    235    4774    219            �           2606    58038 &   Appointment Appointment_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointment"
    ADD CONSTRAINT "Appointment_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."Service"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public."Appointment" DROP CONSTRAINT "Appointment_serviceId_fkey";
       public               postgres    false    221    223    4777            �           2606    58033 #   Appointment Appointment_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointment"
    ADD CONSTRAINT "Appointment_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public."Appointment" DROP CONSTRAINT "Appointment_userId_fkey";
       public               postgres    false    4774    223    219            �           2606    59408 -   BookingService BookingService_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BookingService"
    ADD CONSTRAINT "BookingService_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."ServiceCategory"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 [   ALTER TABLE ONLY public."BookingService" DROP CONSTRAINT "BookingService_categoryId_fkey";
       public               postgres    false    237    4790    233            �           2606    59403 ,   BookingService BookingService_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BookingService"
    ADD CONSTRAINT "BookingService_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."Service"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Z   ALTER TABLE ONLY public."BookingService" DROP CONSTRAINT "BookingService_serviceId_fkey";
       public               postgres    false    4777    237    221            �           2606    59398 )   BookingService BookingService_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BookingService"
    ADD CONSTRAINT "BookingService_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public."BookingService" DROP CONSTRAINT "BookingService_userId_fkey";
       public               postgres    false    4774    237    219            �           2606    58048 "   Payment Payment_appointmentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_appointmentId_fkey" FOREIGN KEY ("appointmentId") REFERENCES public."Appointment"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_appointmentId_fkey";
       public               postgres    false    225    4779    223            �           2606    58043    Payment Payment_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_userId_fkey";
       public               postgres    false    225    4774    219            �           2606    58063    Review Review_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."Service"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "Review_serviceId_fkey";
       public               postgres    false    4777    221    229            �           2606    58058    Review Review_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "Review_userId_fkey";
       public               postgres    false    4774    219    229            �           2606    58359    Service Service_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service"
    ADD CONSTRAINT "Service_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."ServiceCategory"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public."Service" DROP CONSTRAINT "Service_categoryId_fkey";
       public               postgres    false    4790    233    221            �           2606    58053    Vehicle Vehicle_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Vehicle"
    ADD CONSTRAINT "Vehicle_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."Vehicle" DROP CONSTRAINT "Vehicle_userId_fkey";
       public               postgres    false    219    227    4774            �           2606    58068 8   payment_transactions payment_transactions_paymentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_transactions
    ADD CONSTRAINT "payment_transactions_paymentId_fkey" FOREIGN KEY ("paymentId") REFERENCES public."Payment"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 d   ALTER TABLE ONLY public.payment_transactions DROP CONSTRAINT "payment_transactions_paymentId_fkey";
       public               postgres    false    225    4781    231            k      x������ � �      _      x������ � �      m      x������ � �      a      x������ � �      e      x������ � �      ]   [   x�3�N�-�I5Q���,V �D�b��BAQ~Jir�BJjqrQfAIf~������%������������������������.�=... ���      i   �   x���=
1�zr�\��I6�N+XX	ZڄݨA��M��QP�Z��}<fa����n�{��p����<����&�z�C�}'@Ie
��dI%�D�`~�#t�V��4�0>b�ܢʊU)�`� 9ԗR���K5rԄH�
�53�����};��	��_j��p�J�#�4a+2�#�%s;�,))l��(c/d�k�      [   �  x�u�Kw�: �1�
�6�@x�
jP*�֝ D�P���mO��v���ɷ��w9	)>�?q��YB=��d���5Gqu���r�3ΐ1ߪ~�٭sj��>��%�$ч�yJ��r����S�A����� +cNF"��߸o�?����:4�t���I�:6�LO�������:���ظ�_�+�?�9
2� �%Z��(��,��\u;Ze�[�<F���&�ͭ
��u�6��R���^6��	H�gx���CP�Hf% aD�T����]��<H����m�W{��щ@��y;Z�(�V�}����»���٣R�e��Y�-Pn��ay���a+�Ř\�˸4r,6���LF�!���x�O4"��4���_� a��@92T�$߸O_�e���p��~�:�o��L׳%7��U𼖄�uaG�Qk�8v�g?:�V�w����"SrOf��rs0>O���Gm�p%&��*u^DJ�nF�l~��r�Ku�1��a{�(C0"�!�xZ/#/�u�sL>���]
F�b+Z�R�����y�#f���ï�m?5�b�x�kc��Ɗc����)ܪ�d)R���%���d�g����f��Ϛyi-	Z����- 6���uFS��{,P�1�ZXYt5��H�C��V�XDC��:)�%a|#|���n}ԕ=��7ŋ��҂��y:�l�	����sS�M�L�wS��C^f���D��!��������Zz$8#]�[�S�ۡb)Q*\��UI벺�t~\G��\�\��yC,�����#=��"�I������H����ɔru5�\��2�g�Vp���4w�f�.�,<�Ҙr�$L?��֬����o��r:���)iL��H�b��7Qp�S�x���8����K#��H�h��� �s      c   �   x�uнNC1�9~�����I6�v���ʂ���2Tb���j�@7G:��c�����{
�/��%0�����3m�6\&����F���d�|��ɭ ������E# u��v<��=ea��U����)�:���W�j#J�8�(��E8���b*������� ���V�i4�b��ׅ>/=,s_S�_�~�M�_��Ƭ	�# |O�W�      Y   Y  x�u�[j�Q��gVỜ��_f� 0����d������B�/�U�G�5#pf��(�5J����sgg�N$]���[��Nu�j�u�a=i�Q��[d��#'��Xt  -����	��%�&}�}DUB?��>��<�}z�)M8H��xT4�g�>V��v�}-g�m-�|�%��u��#���lȬ��LVX��<8!�s�$��>�� �7��h`���Ϸ�e���a��A�/�R���"øTM,���=�ѨU˚܅H_`��:{'\IK���˨l��Af3]�6�I��Ó�-����v�~�<|>����K�����>]���d���y�����v<IՔj      g      x������ � �     