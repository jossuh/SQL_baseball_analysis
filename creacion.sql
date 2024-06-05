--CREACION DE BASE DE DATOS

	CREATE DATABASE "baseball"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
   
--CREACION DE TABLAS
   
  	CREATE TABLE public.allstarfull (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	"gameNum" int4 NULL,
	"gameID" varchar(50) NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"GP" int4 NULL,
	"startingPos" int4 NULL
	);

	CREATE TABLE public.awardsmanagers (
	"playerID" varchar(50) NULL,
	"awardID" varchar(50) NULL,
	"yearID" int4 NULL,
	"lgID" varchar(50) NULL,
	tie varchar(50) NULL,
	notes varchar(50) NULL
	);

	CREATE TABLE public.awardsplayers (
	"playerID" varchar(50) NULL,
	"awardID" varchar(50) NULL,
	"yearID" int4 NULL,
	"lgID" varchar(50) NULL,
	tie varchar(50) NULL,
	notes varchar(50) NULL
	);

	CREATE TABLE public.awardssharemanagers (
	"awardID" varchar(50) NULL,
	"yearID" int4 NULL,
	"lgID" varchar(50) NULL,
	"playerID" varchar(50) NULL,
	"pointsWon" int4 NULL,
	"pointsMax" int4 NULL,
	"votesFirst" int4 NULL
	);

	CREATE TABLE public.awardsshareplayers (
	"awardID" varchar(50) NULL,
	"yearID" int4 NULL,
	"lgID" varchar(50) NULL,
	"playerID" varchar(50) NULL,
	"pointsWon" int4 NULL,
	"pointsMax" int4 NULL,
	"votesFirst" int4 NULL
	);

	CREATE TABLE public.batting (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	stint int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"G" int4 NULL,
	"AB" int4 NULL,
	"R" int4 NULL,
	"H" int4 NULL,
	"2B" int4 NULL,
	"3B" int4 NULL,
	"HR" int4 NULL,
	"RBI" int4 NULL,
	"SB" int4 NULL,
	"CS" int4 NULL,
	"BB" int4 NULL,
	"SO" int4 NULL,
	"IBB" varchar(50) NULL,
	"HBP" varchar(50) NULL,
	"SH" varchar(50) NULL,
	"SF" varchar(50) NULL,
	"GIDP" varchar(50) NULL
	);

	CREATE TABLE public.battingpost (
	"yearID" int4 NULL,
	round varchar(50) NULL,
	"playerID" varchar(50) NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"G" int4 NULL,
	"AB" int4 NULL,
	"R" int4 NULL,
	"H" int4 NULL,
	"2B" int4 NULL,
	"3B" int4 NULL,
	"HR" int4 NULL,
	"RBI" int4 NULL,
	"SB" int4 NULL,
	"CS" varchar(50) NULL,
	"BB" int4 NULL,
	"SO" int4 NULL,
	"IBB" int4 NULL,
	"HBP" varchar(50) NULL,
	"SH" varchar(50) NULL,
	"SF" varchar(50) NULL,
	"GIDP" varchar(50) NULL
	);

	CREATE TABLE public.fielding (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	stint int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"POS" varchar(50) NULL,
	"G" int4 NULL,
	"GS" varchar(50) NULL,
	"InnOuts" varchar(50) NULL,
	"PO" int4 NULL,
	"A" int4 NULL,
	"E" int4 NULL,
	"DP" int4 NULL,
	"PB" int4 NULL,
	"WP" varchar(50) NULL,
	"SB" varchar(50) NULL,
	"CS" varchar(50) NULL,
	"ZR" varchar(50) NULL
	);

	CREATE TABLE public.fieldingof (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	stint int4 NULL,
	"Glf" int4 NULL,
	"Gcf" int4 NULL,
	"Grf" int4 NULL
	);

	CREATE TABLE public.halloffame (
	"playerID" varchar(50) NULL,
	yearid int4 NULL,
	"votedBy" varchar(50) NULL,
	ballots int4 NULL,
	needed int4 NULL,
	votes int4 NULL,
	inducted varchar(50) NULL,
	category varchar(50) NULL,
	needed_note varchar(50) NULL
	);

	CREATE TABLE public.managers (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	inseason int4 NULL,
	"G" int4 NULL,
	"W" int4 NULL,
	"L" int4 NULL,
	"rank" int4 NULL,
	"plyrMgr" varchar(50) NULL
	);

	CREATE TABLE public.managershalf (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	inseason int4 NULL,
	half int4 NULL,
	"G" int4 NULL,
	"W" int4 NULL,
	"L" int4 NULL,
	"rank" int4 NULL
	);

	CREATE TABLE public.master (
	"playerID" varchar(50) NULL,
	"birthYear" int4 NULL,
	"birthMonth" int4 NULL,
	"birthDay" int4 NULL,
	"birthCountry" varchar(50) NULL,
	"birthState" varchar(50) NULL,
	"birthCity" varchar(50) NULL,
	"deathYear" int4 NULL,
	"deathMonth" int4 NULL,
	"deathDay" int4 NULL,
	"deathCountry" varchar(50) NULL,
	"deathState" varchar(50) NULL,
	"deathCity" varchar(50) NULL,
	"nameFirst" varchar(50) NULL,
	"nameLast" varchar(50) NULL,
	"nameGiven" varchar(50) NULL,
	weight int4 NULL,
	height int4 NULL,
	bats varchar(50) NULL,
	throws varchar(50) NULL,
	debut varchar(50) NULL,
	"finalGame" varchar(50) NULL,
	"retroID" varchar(50) NULL,
	"bbrefID" varchar(50) NULL
	);

	CREATE TABLE public.pitching (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	stint int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"W" int4 NULL,
	"L" int4 NULL,
	"G" int4 NULL,
	"GS" int4 NULL,
	"CG" int4 NULL,
	"SHO" int4 NULL,
	"SV" int4 NULL,
	"IPouts" int4 NULL,
	"H" int4 NULL,
	"ER" int4 NULL,
	"HR" int4 NULL,
	"BB" int4 NULL,
	"SO" int4 NULL,
	"BAOpp" varchar(50) NULL,
	"ERA" float4 NULL,
	"IBB" varchar(50) NULL,
	"WP" varchar(50) NULL,
	"HBP" varchar(50) NULL,
	"BK" int4 NULL,
	"BFP" varchar(50) NULL,
	"GF" varchar(50) NULL,
	"R" int4 NULL,
	"SH" varchar(50) NULL,
	"SF" varchar(50) NULL,
	"GIDP" varchar(50) NULL
	);

	CREATE TABLE public.pitchingpost (
	"playerID" varchar(50) NULL,
	"yearID" int4 NULL,
	round varchar(50) NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"W" int4 NULL,
	"L" int4 NULL,
	"G" int4 NULL,
	"GS" int4 NULL,
	"CG" int4 NULL,
	"SHO" int4 NULL,
	"SV" int4 NULL,
	"IPouts" int4 NULL,
	"H" int4 NULL,
	"ER" int4 NULL,
	"HR" int4 NULL,
	"BB" int4 NULL,
	"SO" int4 NULL,
	"BAOpp" float4 NULL,
	"ERA" float4 NULL,
	"IBB" int4 NULL,
	"WP" int4 NULL,
	"HBP" int4 NULL,
	"BK" int4 NULL,
	"BFP" int4 NULL,
	"GF" int4 NULL,
	"R" int4 NULL,
	"SH" int4 NULL,
	"SF" int4 NULL,
	"GIDP" int4 NULL
	);

	CREATE TABLE public.salaries (
	"yearID" int4 NULL,
	"teamID" varchar(50) NULL,
	"lgID" varchar(50) NULL,
	"playerID" varchar(50) NULL,
	salary int4 NULL
	);

	CREATE TABLE public.seriespost (
	"yearID" int4 NULL,
	round varchar(50) NULL,
	"teamIDwinner" varchar(50) NULL,
	"lgIDwinner" varchar(50) NULL,
	"teamIDloser" varchar(50) NULL,
	"lgIDloser" varchar(50) NULL,
	wins int4 NULL,
	losses int4 NULL,
	"ties" int4 NULL
	);

	CREATE TABLE public.teams (
	"yearID" int4 NULL,
	"lgID" varchar(500) NULL,
	"teamID" varchar(500) NULL,
	"franchID" varchar(500) NULL,
	"divID" varchar(500) NULL,
	"Rank" int4 NULL,
	"G" int4 NULL,
	"Ghome" varchar(500) NULL,
	"W" int4 NULL,
	"L" int4 NULL,
	"DivWin" varchar(500) NULL,
	"WCWin" varchar(500) NULL,
	"LgWin" varchar(500) NULL,
	"WSWin" varchar(500) NULL,
	"R" int4 NULL,
	"AB" int4 NULL,
	"H" int4 NULL,
	"2B" int4 NULL,
	"3B" int4 NULL,
	"HR" int4 NULL,
	"BB" int4 NULL,
	"SO" int4 NULL,
	"SB" int4 NULL,
	"CS" int4 NULL,
	"HBP" varchar(500) NULL,
	"SF" varchar(500) NULL,
	"RA" int4 NULL,
	"ER" int4 NULL,
	"ERA" float4 NULL,
	"CG" int4 NULL,
	"SHO" int4 NULL,
	"SV" int4 NULL,
	"IPouts" int4 NULL,
	"HA" int4 NULL,
	"HRA" int4 NULL,
	"BBA" int4 NULL,
	"SOA" int4 NULL,
	"E" int4 NULL,
	"DP" int4 NULL,
	"FP" float4 NULL,
	"name" varchar(500) NULL,
	park varchar(500) NULL,
	attendance varchar(500) NULL,
	"BPF" int4 NULL,
	"PPF" int4 NULL,
	"teamIDBR" varchar(50) NULL,
	"teamIDlahman45" varchar(50) NULL,
	"teamIDretro" varchar(50) NULL
	);

	CREATE TABLE public.teamsfranchises (
	"franchID" varchar(50) NULL,
	"franchName" varchar(50) NULL,
	active varchar(50) NULL,
	"NAassoc" varchar(50) NULL
	);

	CREATE TABLE public.teamshalf (
	"yearID" int4 NULL,
	"lgID" varchar(50) NULL,
	"teamID" varchar(50) NULL,
	"Half" int4 NULL,
	"divID" varchar(50) NULL,
	"DivWin" varchar(50) NULL,
	"Rank" int4 NULL,
	"G" int4 NULL,
	"W" int4 NULL,
	"L" int4 NULL
	);
   
--