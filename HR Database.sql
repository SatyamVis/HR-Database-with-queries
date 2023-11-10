create database HR;
use HR ;

create table countries
(
COUNTRY_ID varchar(2) primary key,
COUNTRY_NAME varchar(40),
REGION_ID int);

insert into countries values 
('AR','Argentina',2),
('AU','Australia',3),
('BE','Belgium',1),
('BR','Brazil',2),
('CA','Canada',2),
('CH','Switzerland',1),
('CN','China',3),
('DE','Germany',1),
('DK','Denmark',1),
('EG','Egypt',4),
('FR','France',1),
('IL','Israel',4),
('IN','India',3),
('IT','Italy',1),
('JP','Japan',3),
('KW','Kuwait',4),
('ML','Malaysia',3),
('MX','Mexico',2),
('NG','Nigeria',4),
('NL','Netherlands',1),
('SG','Singapore',3),
('UK','United Kingdom',1),
('US','United States of America',2),
('ZM','Zambia',4),
('ZW','Zimbabwe',4);


create table locations
(
LOCATION_ID int primary key,
STREET_ADDRESS	varchar(50),
POSTAL_CODE varchar(12),
CITY varchar(25),
STATE_PROVINCE varchar(25),
COUNTRY_ID char(2),
foreign key (country_id) references countries(country_id) 
);


insert into locations values
(1000 ,  '1297 ViaColadiRie' , '989' , 'Roma' , Null , 'IT')  , 
(1100 ,  '93091 CalledellaTesta' , '10934' , 'Venice' , Null , 'IT')  , 
(1200 ,  '2017 Shinjuku-ku' , '1689' , 'Tokyo' , 'TokyoPrefecture' , 'JP')  , 
(1300 ,  '9450 Kamiya-cho' , '6823' , 'Hiroshima' , Null , 'JP')  , 
(1400 ,  '2014 JabberwockyRd' , '26192' , 'Southlake' , 'Texas' , 'US')  , 
(1500 ,  '2011 InteriorsBlvd' , '99236' , 'SouthSanFrancisco' , 'California' , 'US')  , 
(1600 ,  '2007 ZagoraSt' , '50090' , 'SouthBrunswick' , 'NewJersey' , 'US')  , 
(1700 ,  '2004 CharadeRd' , '98199' , 'Seattle' , 'Washington' , 'US')  , 
(1800 ,  '147 SpadinaAve' , 'M5V2L7' , 'Toronto' , 'Ontario' , 'CA')  , 
(1900 ,  '6092 BoxwoodSt' , 'YSW9T2' , 'Whitehorse' , 'Yukon' , 'CA')  , 
(2000 ,  '40-5-12 Laogianggen' , '190518' , 'Beijing' , Null , 'CN')  , 
(2100 ,  '1298 Vileparle(E)' , '490231' , 'Bombay' , 'Maharashtra' , 'IN')  , 
(2200 ,  '12-98 VictoriaStreet' , '2901' , 'Sydney' , 'NewSouthWales' , 'AU')  , 
(2300 ,  '198 ClementiNorth' , '540198' , 'Singapore' , Null , 'SG')  , 
(2400 ,  '8204 ArthurSt' , Null , 'London' , Null , 'UK')  , 
(2500 ,  'MagdalenCentre , TheOxfordSciencePark' , 'OX99ZB' , 'Oxford' , 'Oxford' , 'UK')  , 
(2600 ,  '9702 ChesterRoad' , '9629850293' , 'Stretford' , 'Manchester' , 'UK')  , 
(2700 ,  'Schwanthalerstr.7031' , '80925' , 'Munich' , 'Bavaria' , 'DE')  , 
(2800 ,  'RuaFreiCaneca 1360' , '01307-002' , 'SaoPaulo' , 'SaoPaulo' , 'BR')  , 
(2900 ,  '20 RuedesCorps-Saints' , '1730' , 'Geneva' , 'Geneve' , 'CH')  , 
(3000 ,  'Murtenstrasse 921' , '3095' , 'Bern' , 'BE' , 'CH')  , 
(3100 ,  'PieterBreughelstraat 837' , '3029SK' , 'Utrecht' , 'Utrecht' , 'NL')  , 
(3200 ,  'MarianoEscobedo 9991' , '11932' , 'MexicoCity' , 'DistritoFederal , ' , 'MX')  ; 

create table jobs
(
JOB_ID	varchar(15) primary key,
JOB_TITLE varchar (45),
MIN_SALARY int,
MAX_SALARY int
); 

insert into jobs values
( 'AD_PRES' , 'President' ,20080,40000) ,
( 'AD_VP' , 'Administration Vice President' ,15000,30000) ,
( 'AD_ASST' , 'Administration Assistant' ,3000,6000) ,
( 'FI_MGR' , 'Finance Manager' ,8200,16000) ,
( 'FI_ACCOUNT' , 'Accountant' ,4200,9000) ,
( 'AC_MGR' , 'Accounting Manager' ,8200,16000) ,
( 'AC_ACCOUNT' , 'Public Accountant' ,4200,9000) ,
( 'SA_MAN' , 'Sales Manager' ,10000,20080) ,
( 'SA_REP' , 'Sales Representative' ,6000,12008) ,
( 'PU_MAN' , 'Purchasing Manager' ,8000,15000) ,
( 'PU_CLERK' , 'Purchasing Clerk' ,2500,5500) ,
( 'ST_MAN' , 'Stock Manager' ,5500,8500) ,
( 'ST_CLERK' , 'Stock Clerk' ,2008,5000) ,
( 'SH_CLERK' , 'Shipping Clerk' ,2500,5500) ,
( 'IT_PROG' , 'Programmer' ,4000,10000) ,
( 'MK_MAN' , 'Marketing Manager' ,9000,15000) ,
( 'MK_REP' , 'Marketing Representative' ,4000,9000) ,
( 'HR_REP' , 'Human Resources Representative' ,4000,9000) ,
( 'PR_REP' , 'Public Relations Representative' ,4500,10500) ;


create table departments
(
DEPARTMENT_ID int primary key , 
DEPARTMENT_NAME varchar (30),      
MANAGER_ID int,
LOCATION_ID int
);
alter table departments add foreign key (LOCATION_ID) references locations(LOCATION_ID);

insert into departments values
(10,'Administration',200,1700),
(20,'Marketing' , 201,1800),
(30,'Purchasing',114,1700),
(40,'Human Resources' , 203,2400),
(50,'Shipping',121,1500),
(60,'IT',103,1400),
(70,'Public Relations',204,2700),
(80,'Sales',145,2500),
(90,'Executive' ,  100,1700),
( 100,'Finance' , 108,1700),
( 110,'Accounting',205,1700),
( 120,'Treasury',0,1700),
( 130,'Corporate Tax' , 0,1700),
( 140,'Control And Credit', 0,1700),
( 150,'Shareholder Services', 0,1700),
( 160,'Benefits',0,1700),
( 170,'Manufacturing' , 0,1700),
( 180,'Construction',0,1700),
( 190,'Contracting',0,1700),
( 200,'Operations',0,1700),
( 210,'IT Support',0,1700),
( 220,'NOC' , 0,1700),
( 230,'IT Helpdesk',0,1700),
( 240,'Government Sales', 0,1700),
( 250,'Retail Sales',0,1700),
( 260,'Recruiting',0,1700),
( 270,'Payroll' , 0,1700);


create table employees
(
 EMPLOYEE_ID int primary key,
 FIRST_NAME  varchar(20),
 LAST_NAME varchar(20),
 EMAIL varchar(30),
 PHONE_NUMBER varchar(25),
 HIRE_DATE date,
 JOB_ID varchar(20),
 SALARY  float,
 COMMISSION_PCT float,
 MANAGER_ID int,
 DEPARTMENT_ID int,
 foreign key (DEPARTMENT_ID) references departments(DEPARTMENT_ID)
 );
alter table employees add foreign key (JOB_ID) references jobs(JOB_ID);

insert into employees values 
(100 , 'Steven' , 'King' , 'SKING' , '515.123.4567' , '2003-06-17' , 'AD_PRES' , 24000 , 0 , Null , 90) , 
(101 , 'Neena' , 'Kochhar' , 'NKOCHHAR' , '515.123.4568' , '2005-09-21' , 'AD_VP' , 17000 , 0 , 100 , 90) , 
(102 , 'Lex' , 'DeHaan' , 'LDEHAAN' , '515.123.4569' , '2001-01-13' , 'AD_VP' , 17000 , 0 , 100 , 90) , 
(103 , 'Alexander' , 'Hunold' , 'AHUNOLD' , '590.423.4567' , '2006-01-03' , 'IT_PROG' , 9000 , 0 , 102 , 60) , 
(104 , 'Bruce' , 'Ernst' , 'BERNST' , '590.423.4568' , '2007-05-21' , 'IT_PROG' , 6000 , 0 , 103 , 60) , 
(105 , 'David' , 'Austin' , 'DAUSTIN' , '590.423.4569' , '2005-06-25' , 'IT_PROG' , 4800 , 0 , 103 , 60) , 
(106 , 'Valli' , 'Pataballa' , 'VPATABAL' , '590.423.4560' , '2006-02-05' , 'IT_PROG' , 4800 , 0 , 103 , 60) , 
(107 , 'Diana' , 'Lorentz' , 'DLORENTZ' , '590.423.5567' , '2007-02-07' , 'IT_PROG' , 4200 , 0 , 103 , 60) , 
(108 , 'Nancy' , 'Greenberg' , 'NGREENBE' , '515.124.4569' , '2002-08-17' , 'FI_MGR' , 12008 , 0 , 101 , 100) , 
(109 , 'Daniel' , 'Faviet' , 'DFAVIET' , '515.124.4169' , '2002-08-16' , 'FI_ACCOUNT' , 9000 , 0 , 108 , 100) , 
(110 , 'John' , 'Chen' , 'JCHEN' , '515.124.4269' , '2005-09-28' , 'FI_ACCOUNT' , 8200 , 0 , 108 , 100) , 
(111 , 'Ismael' , 'Sciarra' , 'ISCIARRA' , '515.124.4369' , '2005-09-30' , 'FI_ACCOUNT' , 7700 , 0 , 108 , 100) , 
(112 , 'JoseManuel' , 'Urman' , 'JMURMAN' , '515.124.4469' , '2006-03-07' , 'FI_ACCOUNT' , 7800 , 0 , 108 , 100) , 
(113 , 'Luis' , 'Popp' , 'LPOPP' , '515.124.4567' , '2007-12-07' , 'FI_ACCOUNT' , 6900 , 0 , 108 , 100) , 
(114 , 'Den' , 'Raphaely' , 'DRAPHEAL' , '515.127.4561' , '2002-12-07' , 'PU_MAN' , 11000 , 0 , 100 , 30) , 
(115 , 'Alexander' , 'Khoo' , 'AKHOO' , '515.127.4562' , '2003-05-18' , 'PU_CLERK' , 3100 , 0 , 114 , 30) , 
(116 , 'Shelli' , 'Baida' , 'SBAIDA' , '515.127.4563' , '2005-12-24' , 'PU_CLERK' , 2900 , 0 , 114 , 30) , 
(117 , 'Sigal' , 'Tobias' , 'STOBIAS' , '515.127.4564' , '2005-07-24' , 'PU_CLERK' , 2800 , 0 , 114 , 30) , 
(118 , 'Guy' , 'Himuro' , 'GHIMURO' , '515.127.4565' , '2006-11-15' , 'PU_CLERK' , 2600 , 0 , 114 , 30) , 
(119 , 'Karen' , 'Colmenares' , 'KCOLMENA' , '515.127.4566' , '2007-08-10' , 'PU_CLERK' , 2500 , 0 , 114 , 30) , 
(120 , 'Matthew' , 'Weiss' , 'MWEISS' , '650.123.1234' , '2004-07-18' , 'ST_MAN' , 8000 , 0 , 100 , 50) , 
(121 , 'Adam' , 'Fripp' , 'AFRIPP' , '650.123.2234' , '2005-04-10' , 'ST_MAN' , 8200 , 0 , 100 , 50) , 
(122 , 'Payam' , 'Kaufling' , 'PKAUFLIN' , '650.123.3234' , '2003-05-01' , 'ST_MAN' , 7900 , 0 , 100 , 50) , 
(123 , 'Shanta' , 'Vollman' , 'SVOLLMAN' , '650.123.4234' , '2005-10-10' , 'ST_MAN' , 6500 , 0 , 100 , 50) , 
(124 , 'Kevin' , 'Mourgos' , 'KMOURGOS' , '650.123.5234' , '2007-11-16' , 'ST_MAN' , 5800 , 0 , 100 , 50) , 
(125 , 'Julia' , 'Nayer' , 'JNAYER' , '650.124.1214' , '2005-07-16' , 'ST_CLERK' , 3200 , 0 , 120 , 50) , 
(126 , 'Irene' , 'Mikkilineni' , 'IMIKKILI' , '650.124.1224' , '2006-09-28' , 'ST_CLERK' , 2700 , 0 , 120 , 50) , 
(127 , 'James' , 'Landry' , 'JLANDRY' , '650.124.1334' , '2007-01-14' , 'ST_CLERK' , 2400 , 0 , 120 , 50) , 
(128 , 'Steven' , 'Markle' , 'SMARKLE' , '650.124.1434' , '2008-03-08' , 'ST_CLERK' , 2200 , 0 , 120 , 50) , 
(129 , 'Laura' , 'Bissot' , 'LBISSOT' , '650.124.5234' , '2005-08-20' , 'ST_CLERK' , 3300 , 0 , 121 , 50) , 
(130 , 'Mozhe' , 'Atkinson' , 'MATKINSO' , '650.124.6234' , '2005-10-30' , 'ST_CLERK' , 2800 , 0 , 121 , 50) , 
(131 , 'James' , 'Marlow' , 'JAMRLOW' , '650.124.7234' , '2005-02-16' , 'ST_CLERK' , 2500 , 0 , 121 , 50) , 
(132 , 'TJ' , 'Olson' , 'TJOLSON' , '650.124.8234' , '2007-04-10' , 'ST_CLERK' , 2100 , 0 , 121 , 50) , 
(133 , 'Jason' , 'Mallin' , 'JMALLIN' , '650.127.1934' , '2004-06-14' , 'ST_CLERK' , 3300 , 0 , 122 , 50) , 
(134 , 'Michael' , 'Rogers' , 'MROGERS' , '650.127.1834' , '2006-08-26' , 'ST_CLERK' , 2900 , 0 , 122 , 50) , 
(135 , 'Ki' , 'Gee' , 'KGEE' , '650.127.1734' , '2007-12-12' , 'ST_CLERK' , 2400 , 0 , 122 , 50) , 
(136 , 'Hazel' , 'Philtanker' , 'HPHILTAN' , '650.127.1634' , '2008-02-06' , 'ST_CLERK' , 2200 , 0 , 122 , 50) , 
(137 , 'Renske' , 'Ladwig' , 'RLADWIG' , '650.121.1234' , '2003-07-14' , 'ST_CLERK' , 3600 , 0 , 123 , 50) , 
(138 , 'Stephen' , 'Stiles' , 'SSTILES' , '650.121.2034' , '2005-10-26' , 'ST_CLERK' , 3200 , 0 , 123 , 50) , 
(139 , 'John' , 'Seo' , 'JSEO' , '650.121.2019' , '2006-02-12' , 'ST_CLERK' , 2700 , 0 , 123 , 50) , 
(140 , 'Joshua' , 'Patel' , 'JPATEL' , '650.121.1834' , '2006-04-06' , 'ST_CLERK' , 2500 , 0 , 123 , 50) , 
(141 , 'Trenna' , 'Rajs' , 'TRAJS' , '650.121.8009' , '2003-10-17' , 'ST_CLERK' , 3500 , 0 , 124 , 50) , 
(142 , 'Curtis' , 'Davies' , 'CDAVIES' , '650.121.2994' , '2005-01-29' , 'ST_CLERK' , 3100 , 0 , 124 , 50) , 
(143 , 'Randall' , 'Matos' , 'RMATOS' , '650.121.2874' , '2006-03-15' , 'ST_CLERK' , 2600 , 0 , 124 , 50) , 
(144 , 'Peter' , 'Vargas' , 'PVARGAS' , '650.121.2004' , '2006-07-09' , 'ST_CLERK' , 2500 , 0 , 124 , 50) , 
(145 , 'John' , 'Russell' , 'JRUSSEL' , '011.44.1344.429268' , '2004-10-01' , 'SA_MAN' , 14000 , 0.4 , 100 , 80) , 
(146 , 'Karen' , 'Partners' , 'KPARTNER' , '011.44.1344.467268' , '2005-01-05' , 'SA_MAN' , 13500 , 0.3 , 100 , 80) , 
(147 , 'Alberto' , 'Errazuriz' , 'AERRAZUR' , '011.44.1344.429278' , '2005-03-10' , 'SA_MAN' , 12000 , 0.3 , 100 , 80) , 
(148 , 'Gerald' , 'Cambrault' , 'GCAMBRAU' , '011.44.1344.619268' , '2007-10-15' , 'SA_MAN' , 11000 , 0.3 , 100 , 80) , 
(149 , 'Eleni' , 'Zlotkey' , 'EZLOTKEY' , '011.44.1344.429018' , '2008-01-29' , 'SA_MAN' , 10500 , 0.2 , 100 , 80) , 
(150 , 'Peter' , 'Tucker' , 'PTUCKER' , '011.44.1344.129268' , '2005-01-30' , 'SA_REP' , 10000 , 0.3 , 145 , 80) , 
(151 , 'David' , 'Bernstein' , 'DBERNSTE' , '011.44.1344.345268' , '2005-03-24' , 'SA_REP' , 9500 , 0.25 , 145 , 80) , 
(152 , 'Peter' , 'Hall' , 'PHALL' , '011.44.1344.478968' , '2005-08-20' , 'SA_REP' , 9000 , 0.25 , 145 , 80) , 
(153 , 'Christopher' , 'Olsen' , 'COLSEN' , '011.44.1344.498718' , '2006-03-30' , 'SA_REP' , 8000 , 0.2 , 145 , 80) , 
(154 , 'Nanette' , 'Cambrault' , 'NCAMBRAU' , '011.44.1344.987668' , '2006-12-09' , 'SA_REP' , 7500 , 0.2 , 145 , 80) , 
(155 , 'Oliver' , 'Tuvault' , 'OTUVAULT' , '011.44.1344.486508' , '2007-11-23' , 'SA_REP' , 7000 , 0.15 , 145 , 80) , 
(156 , 'Janette' , 'King' , 'JKING' , '011.44.1345.429268' , '2004-01-30' , 'SA_REP' , 10000 , 0.35 , 146 , 80) , 
(157 , 'Patrick' , 'Sully' , 'PSULLY' , '011.44.1345.929268' , '2004-03-04' , 'SA_REP' , 9500 , 0.35 , 146 , 80) , 
(158 , 'Allan' , 'McEwen' , 'AMCEWEN' , '011.44.1345.829268' , '2004-08-01' , 'SA_REP' , 9000 , 0.35 , 146 , 80) , 
(159 , 'Lindsey' , 'Smith' , 'LSMITH' , '011.44.1345.729268' , '2005-03-10' , 'SA_REP' , 8000 , 0.3 , 146 , 80) , 
(160 , 'Louise' , 'Doran' , 'LDORAN' , '011.44.1345.629268' , '2005-12-15' , 'SA_REP' , 7500 , 0.3 , 146 , 80) , 
(161 , 'Sarath' , 'Sewall' , 'SSEWALL' , '011.44.1345.529268' , '2006-11-03' , 'SA_REP' , 7000 , 0.25 , 146 , 80) , 
(162 , 'Clara' , 'Vishney' , 'CVISHNEY' , '011.44.1346.129268' , '2005-11-11' , 'SA_REP' , 10500 , 0.25 , 147 , 80) , 
(163 , 'Danielle' , 'Greene' , 'DGREENE' , '011.44.1346.229268' , '2007-03-19' , 'SA_REP' , 9500 , 0.15 , 147 , 80) , 
(164 , 'Mattea' , 'Marvins' , 'MMARVINS' , '011.44.1346.329268' , '2008-01-24' , 'SA_REP' , 7200 , 0.1 , 147 , 80) , 
(165 , 'David' , 'Lee' , 'DLEE' , '011.44.1346.529268' , '2008-02-23' , 'SA_REP' , 6800 , 0.1 , 147 , 80) , 
(166 , 'Sundar' , 'Ande' , 'SANDE' , '011.44.1346.629268' , '2008-03-24' , 'SA_REP' , 6400 , 0.1 , 147 , 80) , 
(167 , 'Amit' , 'Banda' , 'ABANDA' , '011.44.1346.729268' , '2008-04-21' , 'SA_REP' , 6200 , 0.1 , 147 , 80) , 
(168 , 'Lisa' , 'Ozer' , 'LOZER' , '011.44.1343.929268' , '2005-03-11' , 'SA_REP' , 11500 , 0.25 , 148 , 80) , 
(169 , 'Harrison' , 'Bloom' , 'HBLOOM' , '011.44.1343.829268' , '2006-03-23' , 'SA_REP' , 10000 , 0.2 , 148 , 80) , 
(170 , 'Tayler' , 'Fox' , 'TFOX' , '011.44.1343.729268' , '2006-01-24' , 'SA_REP' , 9600 , 0.2 , 148 , 80) , 
(171 , 'William' , 'Smith' , 'WSMITH' , '011.44.1343.629268' , '2007-02-23' , 'SA_REP' , 7400 , 0.15 , 148 , 80) , 
(172 , 'Elizabeth' , 'Bates' , 'EBATES' , '011.44.1343.529268' , '2007-03-24' , 'SA_REP' , 7300 , 0.15 , 148 , 80) , 
(173 , 'Sundita' , 'Kumar' , 'SKUMAR' , '011.44.1343.329268' , '2008-04-21' , 'SA_REP' , 6100 , 0.1 , 148 , 80) , 
(174 , 'Ellen' , 'Abel' , 'EABEL' , '011.44.1644.429267' , '2004-05-11' , 'SA_REP' , 11000 , 0.3 , 149 , 80) , 
(175 , 'Alyssa' , 'Hutton' , 'AHUTTON' , '011.44.1644.429266' , '2005-03-19' , 'SA_REP' , 8800 , 0.25 , 149 , 80) , 
(176 , 'Jonathon' , 'Taylor' , 'JTAYLOR' , '011.44.1644.429265' , '2006-03-24' , 'SA_REP' , 8600 , 0.2 , 149 , 80) , 
(177 , 'Jack' , 'Livingston' , 'JLIVINGS' , '011.44.1644.429264' , '2006-04-23' , 'SA_REP' , 8400 , 0.2 , 149 , 80) ,
(178 , 'Kimberely' , 'Grant' , 'KGRANT' , '011.44.1644.429263' , '2007-05-24' , 'SA_REP' , 7000 , 0.15 , 149 , null) , 
(179 , 'Charles' , 'Johnson' , 'CJOHNSON' , '011.44.1644.429262' , '2008-01-04' , 'SA_REP' , 6200 , 0.1 , 149 , 80) , 
(180 , 'Winston' , 'Taylor' , 'WTAYLOR' , '650.507.9876' , '2006-01-24' , 'SH_CLERK' , 3200 , 0 , 120 , 50) , 
(181 , 'Jean' , 'Fleaur' , 'JFLEAUR' , '650.507.9877' , '2006-02-23' , 'SH_CLERK' , 3100 , 0 , 120 , 50) , 
(182 , 'Martha' , 'Sullivan' , 'MSULLIVA' , '650.507.9878' , '2007-06-21' , 'SH_CLERK' , 2500 , 0 , 120 , 50) , 
(183 , 'Girard' , 'Geoni' , 'GGEONI' , '650.507.9879' , '2008-02-03' , 'SH_CLERK' , 2800 , 0 , 120 , 50) , 
(184 , 'Nandita' , 'Sarchand' , 'NSARCHAN' , '650.509.1876' , '2004-01-27' , 'SH_CLERK' , 4200 , 0 , 121 , 50) , 
(185 , 'Alexis' , 'Bull' , 'ABULL' , '650.509.2876' , '2005-02-20' , 'SH_CLERK' , 4100 , 0 , 121 , 50) , 
(186 , 'Julia' , 'Dellinger' , 'JDELLING' , '650.509.3876' , '2006-06-24' , 'SH_CLERK' , 3400 , 0 , 121 , 50) , 
(187 , 'Anthony' , 'Cabrio' , 'ACABRIO' , '650.509.4876' , '2007-02-07' , 'SH_CLERK' , 3000 , 0 , 121 , 50) , 
(188 , 'Kelly' , 'Chung' , 'KCHUNG' , '650.505.1876' , '2005-06-14' , 'SH_CLERK' , 3800 , 0 , 122 , 50) , 
(189 , 'Jennifer' , 'Dilly' , 'JDILLY' , '650.505.2876' , '2005-08-13' , 'SH_CLERK' , 3600 , 0 , 122 , 50) , 
(190 , 'Timothy' , 'Gates' , 'TGATES' , '650.505.3876' , '2006-07-11' , 'SH_CLERK' , 2900 , 0 , 122 , 50) , 
(191 , 'Randall' , 'Perkins' , 'RPERKINS' , '650.505.4876' , '2007-12-19' , 'SH_CLERK' , 2500 , 0 , 122 , 50) , 
(192 , 'Sarah' , 'Bell' , 'SBELL' , '650.501.1876' , '2004-02-04' , 'SH_CLERK' , 4000 , 0 , 123 , 50) , 
(193 , 'Britney' , 'Everett' , 'BEVERETT' , '650.501.2876' , '2005-03-03' , 'SH_CLERK' , 3900 , 0 , 123 , 50) , 
(194 , 'Samuel' , 'McCain' , 'SMCCAIN' , '650.501.3876' , '2006-07-01' , 'SH_CLERK' , 3200 , 0 , 123 , 50) , 
(195 , 'Vance' , 'Jones' , 'VJONES' , '650.501.4876' , '2007-03-17' , 'SH_CLERK' , 2800 , 0 , 123 , 50) , 
(196 , 'Alana' , 'Walsh' , 'AWALSH' , '650.507.9811' , '2006-04-24' , 'SH_CLERK' , 3100 , 0 , 124 , 50) , 
(197 , 'Kevin' , 'Feeney' , 'KFEENEY' , '650.507.9822' , '2006-05-23' , 'SH_CLERK' , 3000 , 0 , 124 , 50) , 
(198 , 'Donald' , 'OConnell' , 'DOCONNEL' , '650.507.9833' , '2007-06-21' , 'SH_CLERK' , 2600 , 0 , 124 , 50) , 
(199 , 'Douglas' , 'Grant' , 'DGRANT' , '650.507.9844' , '2008-01-13' , 'SH_CLERK' , 2600 , 0 , 124 , 50) , 
(200 , 'Jennifer' , 'Whalen' , 'JWHALEN' , '515.123.4444' , '2003-09-17' , 'AD_ASST' , 4400 , 0 , 101 , 10) , 
(201 , 'Michael' , 'Hartstein' , 'MHARTSTE' , '515.123.5555' , '2004-02-17' , 'MK_MAN' , 13000 , 0 , 100 , 20) , 
(202 , 'Pat' , 'Fay' , 'PFAY' , '603.123.6666' , '2005-08-17' , 'MK_REP' , 6000 , 0 , 201 , 20) , 
(203 , 'Susan' , 'Mavris' , 'SMAVRIS' , '515.123.7777' , '2002-06-07' , 'HR_REP' , 6500 , 0 , 101 , 40) , 
(204 , 'Hermann' , 'Baer' , 'HBAER' , '515.123.8888' , '2002-06-07' , 'PR_REP' , 10000 , 0 , 101 , 70) , 
(205 , 'Shelley' , 'Higgins' , 'SHIGGINS' , '515.123.8080' , '2002-06-07' , 'AC_MGR' , 12008 , 0 , 101 , 110) , 
(206 , 'William' , 'Gietz' , 'WGIETZ' , '515.123.8181' , '2002-06-07' , 'AC_ACCOUNT' , 8300 , 0 , 205 , 110);

create table job_history
(
 EMPLOYEE_ID int ,
 START_DATE date,
 END_DATE date,
 JOB_ID varchar(15),
 DEPARTMENT_ID int,
 foreign key (DEPARTMENT_ID) references departments(DEPARTMENT_ID),
foreign key (EMPLOYEE_ID) references employees(EMPLOYEE_ID)
 );
alter table job_history add foreign key (JOB_ID) references jobs(JOB_ID);


insert into job_history values
(102,"2001-01-13","2006-07-24","IT_PROG",60),
(101,"1997-09-21","2001-10-27","AC_ACCOUNT",110),
(101,"2001-10-28","2005-03-15","AC_MGR",110),
(201,"2004-02-17","2007-12-19","MK_REP",20),
(114,"2006-03-24","2007-12-31","ST_CLERK",50),
(122,"2007-01-01","2007-12-31","ST_CLERK",50),
(200,"1995-09-17","2001-06-17","AD_ASST",90),
(176,"2006-03-24","2006-12-31","SA_REP",80),
(176,"2007-01-01","2007-12-31","SA_MAN",80),
(200,"2002-07-01","2006-12-31","AC_ACCOUNT",90);


create table job_grades(
GRADE_LEVEL varchar(4),
LOWEST_SAL int ,
 HIGHEST_SAL int);

insert into job_grades values
('A'     ,         1000 ,       2999),
('B'    ,          3000  ,      5999),
('C'   ,           6000   ,     9999),
('D'  ,           10000    ,   14999),
('E' ,            15000     ,  24999),
('F',             25000      , 40000);

select * from employees;
select * from departments;
select * from job_history;
select * from locations;
select * from jobs;
select * from countries;
select * from job_grades;



/* Q-1. From the following table, write a SQL query to 
find those employees whose salaries are less than 6000. 
Return full name (first and last name), and salary. */

select concat(first_name," ",last_name) full_name, salary 
  from employees
  where salary < 6000;

/* Q-2. From the following table, write a SQL query to 
find those employees whose salary is higher than 8000. 
Return first name, last name and department number and salary. */

select first_name, last_name, department_id,salary 
from employees
where salary>8000;

/* Q-3. From the following table, write a SQL query to 
find those employees whose last name is "McEwen". 
Return first name, last name and department ID. */

select first_name, last_name, department_id 
	from employees
      where last_name = "McEwen";

/* Q-4. From the following table, write a SQL query to 
identify employees who do not have a department number. 
Return employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,commission_pct, manager_id and department_id. */

select * from employees where department_id is null;

/* Q-5. From the following table, write a SQL query to 
find the details of 'Marketing' department. Return all fields.*/

select * from departments
where department_name = 'marketing';

/* Q-6. From the following table, write a SQL query to 
find those employees whose first name does not contain the letter ‘M’. 
Sort the result-set in ascending order by department ID. 
Return full name (first and last name together), hire_date, salary and department_id. */

select concat(first_name," ",last_name) as full_name,hire_date,salary, department_id
	from employees
     where first_name not like "M%"
		order by department_id asc;

/* Q-7. From the following table, write a SQL query to 
find those employees who earn between 8000 and 12000 (Begin and end values are included.) and get some commission. 
These employees joined before ‘2003-06-05’ and were not included in the department numbers 40, 120 and 70. Return all fields. */


SELECT *
 FROM employees
  WHERE salary BETWEEN 8000 AND 12000 
      AND commission_pct IS NOT NULL
       OR  department_id NOT IN (40 , 120 , 70)
          AND   hire_date < '2003-06-05';

/* Q-8. From the following table, write a SQL query to find 
those employees who do not earn any commission. Return full name (first and last name), and salary. */

select concat(first_name," ",last_name)  as full_name,salary
   from employees
      where commission_pct is null;

/* Q-9. From the following table, write a SQL query to 
find the employees whose salary is in the range 9000,17000 (Begin and end values are included). 
Return full name, contact details and salary. */

select concat(first_name, " ", last_name) as full_name, salary
    from employees
    where salary between 9000 and 17000;

/* Q-10. From the following table, write a SQL query to 
find the employees whose first name ends with the letter ‘m’. 
Return the first and last name, and salary. */

select concat (first_name, " ",last_name) full_name, salary
   from employees
      where first_name like "%m";

/* Q-11. From the following table, write a SQL query to 
find those employees whose salaries are not between 7000 and 15000 (Begin and end values are included). 
Sort the result-set in ascending order by the full name (first and last). Return full name and salary. */

select concat(first_name," ",last_name) full_name, salary
   from employees
     where salary not between 7000 and 15000 
        order by full_name asc;

/* Q-12. From the following table, write a SQL query to 
find those employees who were hired between November 5th, 2007 and July 5th, 2009. 
Return full name (first and last), job id and hire date. */

select concat ( first_name, " ", last_name) as full_name, job_id,hire_date
	from employees
      where hire_date between '2007-11-05' and '2009-07-05';

/* Q-13. From the following table, write a SQL query to 
find those employees who work either in department 70 or 90. 
Return full name (first and last name), department id. */

select concat ( first_name, " ", last_name) as full_name, department_id
	from employees where department_id in (70,90);

/* Q-14. From the following table, write a SQL query to 
find those employees who work under a manager. 
Return full name (first and last name), salary, and manager ID. */

select concat ( first_name, " ", last_name) as full_name,salary , manager_id
	from employees
		where manager_id is not null;

/* Q-15. From the following table, write a SQL query to 
find the employees who were hired before June 21st, 2002. Return all fields. */

select * from employees
	where hire_date<"2002-06-21";

/* Q-16. From the following table, write a SQL query to 
find the employees whose managers hold the ID 120, 103, or 145. Return first name, last name, email, salary and manager ID.*/

select first_name,last_name,email,salary,manager_id
	from employees 
		where manager_id in (120,103,145);

/* Q-17. From the following table, write a SQL query to 
find employees whose first names contain the letters D, S, or N. 
Sort the result-set in descending order by salary. Return all fields. */

select * from employees
	where first_name like "%D%"
		or first_name like "%S%"
        or first_name like "%N%"
			order by salary desc;
            
/* Q-18. From the following table, write a SQL query to 
find those employees who earn above 11000 
or the seventh character in their phone number is 3. 
Sort the result-set in descending order by first name. 
Return full name (first name and last name), hire date, commission percentage, email, and telephone separated by '-', and salary. */


select concat(first_name," ",last_name) full_name, hire_date,commission_pct,concat(email,"-",phone_number) contact_detail,salary
	from employees where salary > 11000 or phone_number like "______3%" order by first_name desc;

/* Q -19. From the following table, write a SQL query to 
find those employees whose first name contains a character 's' in the third position. 
Return first name, last name and department id. */

select first_name, last_name,department_id
   from employees
     where first_name like "__s%";

/* Q-20. From the following table, write a SQL query to 
find those employees work in the departments that are not part of the department 50 or 30 or 80. 
Return employee_id, first_name,job_id, department_id. */

select employee_id, first_name, job_id, department_id
	from employees
       where department_id not in (50,30,80);

/* Q-21. From the following table, write a SQL query to 
find the employees whose department numbers are included in 30, 40, or 90. 
Return employee id, first name, job id, department id. */

select employee_id, first_name, job_id, department_id
	from employees
		where department_id in (30,40,90);

/* Q-22. From the following table, write a SQL query to 
find those employees who worked more than two jobs in the past. 
Return employee id. */

select employee_id,total
	from (select employee_id,count(*) total from job_history group by employee_id ) employee_count where total >=2 ;
		-- or--
select employee_id 
	from job_history
		group by employee_id having count(*)>=2;

/* Q-23. From the following table, write a SQL 
query to count the number of employees, 
the sum of all salary,
 and difference between the highest salary and lowest salaries by each job id. 
 Return job_id, count, sum, salary_difference. */

select job_id,
   count(*) as count,
   sum(salary) as total,
   (max(salary)-min(salary)) as salary_diff
   from employees group by job_id;

/* Q-24. From the following table, write a SQL query to 
find each job ids where two or more employees worked for more than 300 days. 
Return job id. */

select job_id 
	from job_history 
		WHERE end_date-start_date >300 
			GROUP BY job_id 
					HAVING COUNT(*) >=2;
                    
                    
/* Q-25. From the following table, write a SQL query 
to count the number of cities in each country. Return country ID and number of cities */                    

select country_id,count(*)
	from locations
		group by country_id;

/* Q-26. From the following table, write a SQL query 
to count the number of employees worked under each manager. 
Return manager ID and number of employees. */

select manager_id, count(employee_id)
	from employees
		group by manager_id;

/* Q-27. From the following table, write a SQL query 
to find all jobs. Sort the result-set in descending order by job title. 
Return all fields. */

select * from jobs order by job_title desc;

/* Q-28. From the following table, write a SQL query to 
find all those employees who are either Sales Representatives or Salesmen. 
Return first name, last name and hire date. */

select first_name, last_name, hire_date	
	from employees
		where job_id in ("sa_man","sa_rep");

/* Q-29. From the following table, write a SQL query 
to calculate the average salary of employees 
who receive a commission percentage for each department. 
Return department id, average salary. */

select department_id, avg(salary)
	from employees
		where commission_pct is not null group by department_id;

/* Q-30. From the following table, write a SQL query to find 
the departments where any manager manages four or more employees. 
Return department_id. */

select  distinct department_id
	from employees
		group by department_id ,manager_id
			having count(employee_id)>=4;

-- or --

select  department_id,manager_id, count(employee_id)
	from employees
		group by department_id ,manager_id
			having count(employee_id)>=4;


/* Q-31. From the following table, write a SQL query 
to find the departments where more than ten employees receive commissions. 
Return department id. */

select department_id
	from employees
		group by department_id having count(employee_id)>10;

/* Q-33. From the following table, write a SQL query 
to find those employees who do not have commission percentage 
and have salaries between 7000, 12000 (Begin and end values are included.) 
and who are employed in the department number 50. 
Return all the fields of employees. */


select * from employees
	where commission_pct is null
		and salary between 7000 and 12000
			and department_id = 50;

/* Q-34. From the following table, write a SQL query 
to compute the average salary of each job ID. 
Exclude those records where average salary is on or lower than 8000. 
Return job ID, average salary. */

select job_id,avg(salary) average_salary from employees
	  group by job_id
		having avg(salary) >8000;

/* Q-35. From the following table, write a SQL query 
to find those job titles
		where maximum salary falls between 12000 and 18000 (Begin and end values are included.). 
        Return job_title, max_salary-min_salary. */

select job_title, (max_salary - min_salary) salary_diff from jobs
	where (max_salary) between 12000 and 18000;

/* Q-36. From the following table, write a SQL query 
to find the employees 
	whose first or last name begins with 'D'. 
    Return first name, last name. */

select first_name, last_name from employees
	where first_name  like "D%" or last_name  like "D%";
    
/* Q-37. From the following table, write a SQL query 
to find details of those jobs 
	where the minimum salary exceeds 9000. 
		Return all the fields of jobs. */

select * from jobs	
	where min_salary>9000;

/* Q-38. From the following table, write a SQL query 
to find those employees who joined after 7th September 1987. 
Return all the fields. */

select * from employees
	where hire_date> '1987-09-07';

-- =====================================================================

/* Q-1. From the following table, write a SQL query to 
find those employees who receive a higher salary than the employee with ID 163. 
Return first name, last name. */

select first_name, last_name
	from employees 
		where salary > all (
						select salary 
							from employees
								where employee_id=163);

/* Q-2. From the following table, write a SQL query 
to find out which employees have the same designation as the employee whose ID is 169. 
Return first name, last name, department ID and job ID. */

select  first_name, last_name, department_id, job_id from employees
	where job_id=(select job_id from employees where employee_id = 169);

/* Q-3. From the following table, write a SQL query 
to find those employees whose salary 
	matches the lowest salary of any of the departments. 
		Return first name, last name and department ID. */

select first_name, last_name, department_id, salary from employees a
	where a.salary = any (select min(salary) from employees b group by department_id );

-- or -- 

SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary IN  
( SELECT MIN(salary)  
FROM employees  
GROUP BY department_id 
);

/* Q-4. From the following table, write a SQL query 
to find those employees who earn more than 
	the average salary. 
    Return employee ID, first name, last name. */

select employee_id, first_name, last_name, salary from employees
	where salary > (select avg(salary) from employees);
    
/* Q-5. From the following table, write a SQL query 
to find those employees who report to that manager whose first name is ‘Payam’. 
Return first name, last name, employee ID and salary. */    
    
select first_name, last_name, employee_id , salary from employees
	where manager_id = (select employee_id 
							from employees
								where first_name="Payam");
    
/* Q-6. From the following tables, write a SQL query 
to find all those employees 
who work in the Finance department. 
Return department ID, name (first), job ID and department name. */    

select a.department_id, a.first_name, a.job_id, b.department_name
	from employees a ,departments b
		where a.department_id=b.department_id
			and 
				b.department_name="Finance";
                
/* Q-7. From the following table, write a SQL query 
to find the employee whose salary is 3000 
and reporting person’s ID is 121. 
Return all fields. */

select * from employees
		where salary=3000
			and manager_id=121;

/* Q-8. From the following table, write a SQL query 
to find those employees whose ID matches any of the numbers 134, 159 and 183. 
Return all the fields.   */

select * from employees
	where employee_id in (134,159,183);

/* Q-9. From the following table, write a SQL query 
to find those employees whose salary is in the range of 1000, and 3000 (Begin and end values have included.).
 Return all the fields.  */

select * from employees
	where salary between 1000 and 3000;

/*Q-10. From the following table and write a SQL query 
to find those employees whose salary falls within the range of the smallest salary and 2500. 
Return all the fields. */

select * from employees
	where salary between (select min(salary) from employees) and 2500;

/* Q-11. From the following tables, write a SQL query to find those employees 
who do not work in the departments 
where managers’ IDs are between 100 and 200 (Begin and end values are included.). 
Return all the fields of the employeess. */

select * from employees
	where department_id not in 
			(select 
				department_id
					from departments 
                    where manager_id between 100 and 200);

/* Q-12. From the following table, write a SQL query to find those employees 
who get second-highest salary. 
Return all the fields of the employees. */

select * from employees
	where employee_id in (
							select employee_id from employees
								where salary = (
												select max(salary) from employees 
													where salary < ( 
																	select max(salary) from employees
																	)));
                                                                    
/* Q-13. From the following tables, write a SQL query to find those employees 
who work in the same department as ‘Clara’. 
Exclude all those records where first name is ‘Clara’. 
Return first name, last name and hire date. */


select * from employees 
	where department_id = (
			select department_id from employees
				where first_name ="Clara") and first_name !="clara";

/*Q-14. From the following tables, write a SQL query to find those employees 
who work in a department where the employee’s first name contains the letter 'T'. 
Return employee ID, first name and last name. */

select employee_id, first_name , last_name 
	from employees 
		where department_id in (
			select department_id from employees
				where first_name like "T%");

/* Q-15. From the following tables, write a SQL query to find those employees 
who earn more than the average salary and 
work in the same department as an employee whose first name contains the letter 'J'. 
Return employee ID, first name and salary. */

select employee_id, first_name, salary
	from employees 
		where salary >(
					select avg(salary) from employees) and 
						department_id in (
									select department_id from employees
										where first_name like "%J%");

/* Q-16. From the following table, write a SQL query to find those employees 
whose department is located at ‘Toronto’. 
Return first name, last name, employee ID, job ID. */

select a.first_name, a.last_name, a.employee_id, a.job_id
	from employees a ,departments b ,locations c
		where a.department_id=b.department_id and 
			b.location_id = c.location_id and c.city="Toronto";

/* Q-17. From the following table, write a SQL query 
to find those employees 
whose salary is lower than that of employees 
whose job title is ‘MK_MAN’. 
Return employee ID, first name, last name, job ID. */

select employee_id, first_name, last_name, job_id 
	from employees
		where salary <any(
			select salary from employees
				where job_id="MK_MAN");

/* Q -18. From the following table, write a SQL query 
to find those employees 
whose salary is lower than that of employees whose job title is "MK_MAN". 
Exclude employees of Job title ‘MK_MAN’. 
Return employee ID, first name, last name, job ID. */

select employee_id, first_name, last_name, job_id 
	from employees
		where salary <any(
			select salary from employees
				where job_id="MK_MAN") and 
					job_id !="MK_MAN";

/* Q-19. From the following table, write a SQL query 
to find those employees 
whose salary exceeds the salary of all those employees 
whose job title is "PU_MAN". 
Exclude job title ‘PU_MAN’. 
Return employee ID, first name, last name, job ID. */


select employee_id, first_name, last_name, job_id from employees
	where salary > any(
		select salary from employees
			where job_id="PU_MAN") and job_id <> "PU_MAN";

/* Q-20. From the following table, write a SQL query 
to find those employees 
whose salaries are higher 
than the average for all departments. 
Return employee ID, first name, last name, job ID. */

select employee_id, first_name, last_name, job_id,salary from employees
	where salary>all(	
					select avg(salary)
						from employees
							group by department_id);
							
/* Q-21. From the following table, write a SQL query 
to check whether there are any employees with salaries exceeding 3700. 
Return first name, last name and department ID. */

select first_name, last_name, department_id
	from employees
		where salary >3700;
        

/* Q-22. From the following table, write a SQL query to calculate 
total salary of the departments where at least one employee works. 
Return department ID, total salary. */        
        
select a.department_id, sum(a.salary) as total_salary 
	from employees a,departments b 
		where a.department_id=b.department_id 
			group by a.department_id
				having count(a.department_id)>=1;
                
/*Q-23. Write a query to display the 
employee id, name ( first name and last name ) and the job id column 
with a modified title SALESMAN for those employees whose job title is ST_MAN and DEVELOPER for whose job title is IT_PROG. */                 


select employee_id, concat(first_name," ", last_name) as full_name,
	case 
		when job_id="st_man" then "salesman"
        when job_id="it_prog" then "developer"
        else job_id
	end as title,salary
		from employees;


/* Q-24. Write a query to display the 
employee id, name ( first name and last name ), salary and the SalaryStatus column 
with a title HIGH and LOW respectively 
for those employees whose salary is more than and less than the average salary of all employees. */

select employee_id, concat(first_name," ", last_name) as full_name,salary,
case 
	when salary>=(select avg(salary) from employees) then "High"
    else "Low"
    end as SalaryStatus
		from employees;
    
/* Q-25. Write a query to display 
the employee id, name ( first name and last name ), SalaryDrawn, 
AvgCompare (salary - the average salary of all employees) 
and the SalaryStatus column with a title HIGH and LOW respectively 
for those employees whose salary is more than and less than the average salary of all employees. */ 
        
select employee_id, concat(first_name," ", last_name) as full_name,salary as SalaryDrawn,
        round((salary - (select avg(salary) from employees)),2) as AvgCompare, 
        Case 
			when salary>=(select avg(salary) from employees) then "High"
            else "Low"
            end as SalaryStatus
				from employees;
        
/* Q-26. From the following table, write a SQL query to find 
all those departments where at least one employee is employed. Return department name. */

select b.department_name
	from employees a, departments b
		where a.department_id=b.department_id
			group by a.department_id
				having count(*) >=1;

/* Q-27. From the following tables, write a SQL query to 
find employees who work in departments located in the United Kingdom. 
Return first name. */

select *
	from employees 
		where department_id in (
					select department_id from departments where location_id in (
											select location_id from locations where country_id in (
														select country_id from countries where country_name="United Kingdom")));

/* Q-28. From the following table, write a SQL query 
to find out which employees are earning more than the average salary 
and who work in any of the IT departments. 
Return last name. */

select last_name 
	from employees 
		where department_id in (select department_id from departments where department_name like "It%") and 
				salary>(select avg(salary) from employees) ; 
									
/* Q-29. From the following table, write a SQL query to 
find all those employees 
who earn more than an employee whose last name is 'Ozer'. 
Sort the result in ascending order by last name. 
Return first name, last name and salary. */

select first_name,last_name,salary
	from employees
		where salary>(
						select salary from employees
								where last_name="ozer") order by last_name asc;
							
/* Q-30. From the following tables, write a SQL query 
find the employees who report to a manager based in the United States. 
Return first name, last name. */


select first_name, last_name from employees where manager_id in (
			select manager_id from departments where location_id in (
						select location_id from locations where country_id="US"));

/* Q-31. From the following tables, write a SQL query to 
find those employees 
whose salaries exceed 50% of their department's total salary bill. 
Return first name, last name. */

select a.first_name, a.last_name
	from employees a
		where salary>  (select (sum(salary)) * 0.5
									from employees b
										where a.department_id=b.department_id);

/* Q-32. From the following tables, write a SQL query to 
find those employees who are managers. 
Return all the fields of employees table. */

select * from employees where employee_id in (select distinct manager_id from employees);

/* Q-33. From the following table, write a SQL query to 
find those employees who manage a department. 
Return all the fields of employees table. */

select * from employees where employee_id = any (select  manager_id from departments);

/* Q-34. From the following table, write a SQL query 
to search for employees 
who receive such a salary, 
which is the maximum salary for salaried employees, 
hired between January 1st, 2002 and December 31st, 2003. 
Return employee ID, first name, last name, salary, department name and city. */

select a.employee_id, a.first_name,a.last_name,a.salary,b.department_name,c.city
		from employees a , departments b , locations c 
						where salary = (
								select max(salary) from employees 
										where hire_date between  "2002-01-01" and "2003-12-31")
													and a.department_id=b.department_id
														and b.location_id=c.location_id; 
                                                        
/* Q-35. From the following tables, write a SQL query 
to find those departments that are located in the city of London. 
Return department ID, department name. */

select department_id,department_name 
from departments
where location_id =(select location_id from locations where city="london");

/* Q -36. From the following table, write a SQL query 
to find those employees 
who earn more than the average salary. 
Sort the result-set in descending order by salary. 
Return first name, last name, salary, and department ID. */


select first_name, last_name, salary, department_id from employees
where salary >(select avg(salary) from employees)
order by salary desc;

/* Q-37. From the following table, write a SQL query 
to find those employees who earn more than the maximum salary for a department of ID 40. 
Return first name, last name and department ID. */

select first_name, last_name, department_id
from employees
where salary>(select max(salary) from employees where department_id=40);

/*Q-38. From the following table, write a SQL query 
to find departments for a particular location. 
The location matches the location of the department of ID 30. 
Return department name and department ID. */

select department_name, department_id
from departments
where location_id=(select location_id from departments where department_id=30);

/* Q-39. From the following table, write a SQL query 
to find employees 
who work for the department in which employee ID 201 is employed. 
Return first name, last name, salary, and department ID.*/

select first_name, last_name, salary, department_id from employees where department_id=
(select department_id from employees where employee_id=201);

/* Q-40. From the following table, write a SQL query 
to find those employees 
whose salary matches that of the employee who works in department ID 40. 
Return first name, last name, salary, and department ID. */

select first_name, last_name, salary, department_id from employees where
salary =( select salary from employees where department_id=40);

/* Q-41. From the following table, write a SQL query 
to find those employees 
who work in the department 'Marketing'. 
Return first name, last name and department ID. */

select a.first_name,a.last_name,a.department_id from employees a,departments b
where  a.department_id=b.department_id and department_name="marketing" ;

/*Q-42. From the following table, write a SQL query 
to find those employees 
who earn more than the minimum salary of a department of ID 40. 
Return first name, last name, salary, and department ID. */

select first_name, last_name,salary,department_id from employees where salary > (
				select salary from employees where department_id=40);

/*Q-43. From the following table, write a SQL query 
to find those employees who joined after the employee whose ID is 165. 
Return first name, last name and hire date. */

select first_name,last_name,hire_date from employees where hire_date>(
				select hire_date from employees where employee_id=165);

/*Q-44. From the following table, write a SQL query 
to find those employees 
who earn less than the 
minimum salary of a department of ID 70. 
Return first name, last name, salary, and department ID. */

select first_name,last_name,salary,department_id from employees where salary <(
			select salary from employees where department_id=70) ;

/* Q-45. From the following table, write a SQL query 
to find those employees 
who earn less than the average salary 
and work at the department where Laura (first name) is employed. 
Return first name, last name, salary, and department ID. */

select first_name,last_name,salary,department_id from employees where department_id=(
			select department_id from employees where first_name="Laura") and salary<(
				select avg(salary) from employees);

/*Q-46. From the following tables, write a SQL query 
to find all employees 
whose department is located in London. 
Return first name, last name, salary, and department ID. */

select first_name,last_name,salary,department_id from employees 
			where department_id in (
							select department_id from departments where location_id in (	
												select location_id from locations where city="london"));

/*Q-47. From the following tables, write a SQL query 
to find the city of the employee of ID 134. 
Return city. */

select city from employees a, departments b, locations c 
where a.department_id=b.department_id and b.location_id=c.location_id and employee_id=134;

/* Q-48. From the following tables, write a SQL query 
to find those departments 
where maximum salary is 7000 and above. 
The employees worked in those departments have already completed one or more jobs. 
Return all the fields of the departments. */

select * from departments where department_id in (
				select department_id from employees where employee_id in (
							select employee_id from job_history group by employee_id having count(*)>1)
										group by department_id having max(salary)>7000);

/*Q-49. From the following tables, write a SQL query 
to find those departments 
where the starting salary is at least 8000. 
Return all the fields of departments. */

select * from departments
	where department_id in (select department_id from employees group by department_id having min(salary)>=8000);

/*Q-50. From the following table, write a SQL query 
to find those managers 
who supervise four or more employees. 
Return manager name, department ID. */

select first_name,department_id from employees where employee_id in (
select manager_id from employees group by manager_id having count(*) >=4);

/*Q-51. From the following table, write a SQL query 
to find employees who have previously worked as 'Sales Representatives'. 
Return all the fields of jobs. */
 
select * from jobs where job_id=(
select job_id from employees where employee_id in (
select employee_id from job_history where job_id in (
select job_id from jobs where job_title="Sales Representative")));

/* Q-52. From the following table, write a SQL query 
to find those employees 
who earn the second-lowest salary of all the employees. Return all the fields of employees. */


select * from employees where salary= (
select distinct salary from employees order by salary asc limit 1 offset 1);

/* Q-53. From the following table, write a SQL query to find the departments managed by Susan. Return all the fields of departments. */

select * from departments where manager_id = (
select employee_id from employees where first_name ="susan");

/* Q-54. From the following table, write a SQL query 
to find those employees 
who earn the highest salary in a department. 
Return department ID, employee name, and salary. */

select * from employees a where salary=(select max(salary) from employees where department_id=a.department_id); 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* Q-1. From the following tables, write a SQL query 
to find the first name, last name, department number, and department name for each employee. */

select a.employee_id,a.first_name,a.last_name,a.department_id,b.department_name 
from employees a, departments b
where a.department_id=b.department_id 
order by a.employee_id;

 -- or --
 
select a.employee_id,a.first_name,a.last_name,a.department_id,b.department_name 
from employees a 
inner join departments b
on a.department_id=b.department_id 
order by a.employee_id;


/* Q-2. From the following tables, write a SQL query 
to find the first name, last name, department, city, and state province for each employee. */

select a.employee_id,a.first_name, a.last_name, b.department_name, c.city, c.state_province 
from employees a, departments b, locations c 
where a.department_id=b.department_id 
and b.location_id=c.location_id 
order by a.employee_id;

  -- or --
  
select a.employee_id,a.first_name, a.last_name, b.department_name, c.city, c.state_province 
from employees a inner join departments b  
on a.department_id=b.department_id 
inner join locations c 
on b.location_id=c.location_id 
order by a.employee_id;


/*Q-3. From the following table, write a SQL query 
to find the first name, last name, salary, and job grade for all employees. */

select a.employee_id, a.first_name, a.last_name, b.grade_level
from employees a, job_grades b
where a.salary between b.lowest_sal and b.highest_sal 
order by a.employee_id;

-- or --

select a.employee_id, a.first_name, a.last_name, b.grade_level
from employees a inner join job_grades b
on a.salary between b.lowest_sal and b.highest_sal 
order by a.employee_id;


/* Q-4. From the following tables, write a SQL query 
to find all those employees 
who work in department ID 80 or 40. 
Return first name, last name, department number and department name. */

select a.employee_id, a.first_name, a.last_name, a.department_id, b.department_name
from employees a, departments b
where a.department_id in (80,40) 
and a.department_id=b.department_id
order by a.employee_id;

-- or --

select a.employee_id, a.first_name, a.last_name, a.department_id, b.department_name
from employees a inner join  departments b
on a.department_id in (40,80) and a.department_id=b.department_id
order by a.employee_id;

/* Q-5. From the following tables, write a SQL query 
to find those employees 
whose first name contains the letter ‘z’. 
Return first name, last name, department, city, and state province. */

select a.employee_id, a.first_name, a.last_name, b.department_name, c.city, c.state_province
from employees a, departments b, locations c
where a.first_name like "%z%" 
and a.department_id=b.department_id 
and b.location_id=c.location_id
order by a.employee_id;

-- or --

select a.employee_id, a.first_name, a.last_name, b.department_name, c.city, c.state_province
from employees a
inner join  departments b on a.department_id=b.department_id 
inner join locations c on b.location_id=c.location_id
where a.first_name like "%z%" 
order by a.employee_id;







