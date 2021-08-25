proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202005.csv"
dbms=csv replace out=subway_2005;
getnames=yes;
run;

data subway_2005_1;
set subway_2005;
where VAR2="2호선";
keep VAR1 VAR2 VAR3 VAR4;
run;

data subway_2005_2;
set subway_2005_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2005_3 as
select VAR1, sum(numeric) as tot
	from subway_2005_2
	group by VAR1;
quit;


proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202006.csv"
dbms=csv replace out=subway_2006;
getnames=yes;
run;

data subway_2006_1;
set subway_2006;
where VAR2="2호선";
keep VAR1 VAR2 VAR3 VAR4;
run;

data subway_2006_2;
set subway_2006_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2006_3 as
select VAR1, sum(numeric) as tot
	from subway_2006_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202007.csv"
dbms=csv replace out=subway_2007;
getnames=yes;
run;

data subway_2007_1;
set subway_2007;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2007_2;
set subway_2007_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2007_3 as
select VAR1, sum(numeric) as tot
	from subway_2007_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202008.csv"
dbms=csv replace out=subway_2008;
getnames=yes;
run;

data subway_2008_1;
set subway_2008;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2008_2;
set subway_2008_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2008_3 as
select VAR1, sum(numeric) as tot
	from subway_2008_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202009.csv"
dbms=csv replace out=subway_2009;
getnames=yes;
run;

data subway_2009_1;
set subway_2009;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2009_2;
set subway_2009_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2009_3 as
select VAR1, sum(numeric) as tot
	from subway_2009_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202010.csv"
dbms=csv replace out=subway_2010;
getnames=yes;
run;

data subway_2010_1;
set subway_2010;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2010_2;
set subway_2010_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2010_3 as
select VAR1, sum(numeric) as tot
	from subway_2010_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202011.csv"
dbms=csv replace out=subway_2011;
getnames=yes;
run;

data subway_2011_1;
set subway_2011;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2011_2;
set subway_2011_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2011_3 as
select VAR1, sum(numeric) as tot
	from subway_2011_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202012.csv"
dbms=csv replace out=subway_2012;
getnames=yes;
run;

data subway_2012_1;
set subway_2012;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2012_2;
set subway_2012_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2012_3 as
select VAR1, sum(numeric) as tot
	from subway_2012_2
	group by VAR1;
quit;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202101.csv"
dbms=csv replace out=subway_2101;
getnames=yes;
run;

data subway_2101_1;
set subway_2101;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2101_2;
set subway_2101_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2101_3 as
select VAR1, sum(numeric) as tot
	from subway_2101_2
	group by VAR1;
quit;


proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202102.csv"
dbms=csv replace out=subway_2102;
getnames=yes;
run;

data subway_2102_1;
set subway_2102;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2102_2;
set subway_2102_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2102_3 as
select VAR1, sum(numeric) as tot
	from subway_2102_2
	group by VAR1;
quit;


proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202103.csv"
dbms=csv replace out=subway_2103;
getnames=yes;
run;

data subway_2103_1;
set subway_2103;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2103_2;
set subway_2103_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2103_3 as
select VAR1, sum(numeric) as tot
	from subway_2103_2
	group by VAR1;
quit;


proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\지하철 데이터\CARD_SUBWAY_MONTH_202104.csv"
dbms=csv replace out=subway_2104;
getnames=yes;
run;

data subway_2104_1;
set subway_2104;
keep VAR1 VAR2 VAR3 VAR4;
where VAR2="2호선";
run;

data subway_2104_2;
set subway_2104_1;
numeric=input(VAR4,10.);
run;

proc sql;
create table subway_2104_3 as
select VAR1, sum(numeric) as tot
	from subway_2104_2
	group by VAR1;
quit;


data subway;
set subway_2005_3 subway_2006_3 subway_2007_3 subway_2008_3 subway_2009_3 subway_2010_3 subway_2011_3 subway_2012_3 subway_2101_3 subway_2102_3 subway_2103_3 subway_2104_3;
run;

data subway1;
set subway (rename=(var1=date));
run;
 	

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\강수량\rain.csv"
dbms=csv replace out=rain;
getnames=yes;
run;

data rain_1;
set rain;
keep date rain;
run;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\기온\climate.csv"
dbms=csv replace out=climate;
getnames=yes;
run;

data climate_1;
set climate;
keep date mean_temp;
run;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\1학기\회귀분석1\학기말_과제\회귀분석 과제\공휴일\holiday.csv"
dbms=csv replace out=holiday;
getnames=yes;
run;

/*----------*/

data subway_r;
set subway1;
date=input(date,10.);
tot=input(tot,10.);
run;

data rain_r;
set rain_1;
date=input(date,10.);
rain=input(rain,10.2);
run;


data holiday_r;
set holiday;
date=input(date,10.);
YN=input(YN,10.2);
run;


data climate_r;
set climate_1;
date=input(date,10.);
mean_temp=input(mean_temp,10.2);
run;

proc import datafile="C:\Users\0518h\Documents\subway_r.csv"
dbms=csv replace out=subway_r;
run;


proc import datafile="C:\Users\0518h\Desktop\m.csv"
dbms=csv replace out=m;
run;

data m;
merge Subway_r Rain_1 Climate_1 Holiday;
by date;
run;

data m;
set m;
if (YN="Y") then hol=1;
if (YN="N") then hol=0;
run;

proc reg data=m;
model tot= rain mean_temp hol;
run;

proc reg data=m;
model tot= mean_temp hol;
run;

/*일단 여기까지는 처리했고 선형성 등분산성 점검*/

data mm;
set m;
log_tot=log(tot);
run;

proc reg data=mm;
model log_tot=mean_temp hol;
run;

data mmm;
set m;
log_temp=log(mean_temp+15);
run;

proc reg data=mmm;
model tot=log_temp hol;
run;

proc reg data=mm;
model log_tot=mean_temp hol/r influence;
run;

proc reg data=mm;
model log_tot=mean_temp hol/vif;
run;

data new_data;
input mean_temp hol @@;
cards;
23.5 1 23 0 24 0 25 0
24.5 0 23.5 0 24 0
;
run;

data pred;
set mm new_data;
run;

proc reg data=pred;
model log_tot= mean_temp hol/p cli alpha=0.05;
run;
