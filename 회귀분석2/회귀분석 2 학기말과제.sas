proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\2학기\회귀분석 2\학기말과제\data\강수량.csv"
dbms=csv replace out=rainfall;
getnames=yes;
run;

data rainfall;
set rainfall;
keep VAR3 VAR4;
run;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\2학기\회귀분석 2\학기말과제\data\기온.csv"
dbms=csv replace out=temp;
getnames=yes;
run;

data temp;
set temp;
keep VAR3 VAR4;
run;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\2학기\회귀분석 2\학기말과제\data\평균상대습도.csv"
dbms=csv replace out=hum;
getnames=yes;
run;

data hum;
set hum;
keep VAR3 VAR4;
run;

proc import datafile="C:\Users\0518h\Desktop\서울시립대학교\3학년\2학기\회귀분석 2\학기말과제\data\평균풍속.csv"
dbms=csv replace out=wind;
getnames=yes;
run;

data wind;
set wind;
keep VAR3 VAR4;
run;

data rainfall;
set rainfall(rename=(VAR4=rainfall));
run;

data temp;
set temp(rename=(VAR4=temp));
run;

data hum;
set hum(rename=(VAR4=hum));
run;

data wind;
set wind(rename=(VAR4=wind));
run;

data m;
merge temp rainfall hum wind;
by VAR3;
run;

data m;
set m;
if rainfall=. then rainfall=0;
run;
proc corr data=m;
run;

data m;
set m;
if rainfall>0 then rainfall=1;
run;
proc logistic data=m descending;
model rainfall=temp hum wind;
run;

proc logistic data = m;  
model rainfall=temp hum wind/influence; 
run; 
quit;

proc logistic data = m;  
model rainfall=temp hum wind/rsquare; 
run; 
quit;

proc logistic data = m;  
model rainfall=temp hum wind/selection=backward; 
run; 
quit;

proc logistic data = m;  
model rainfall=temp hum wind/selection=forward; 
run; 
quit;

proc logistic data = m;  
model rainfall=temp hum wind/lackfit; 
run; 
quit;

data m;
set m;
temp2=temp**2;
run;

proc logistic data=m descending;
model rainfall=temp temp2 hum wind/rsquare;
run;
data m;
set m;
wind2=wind**2;
hum2=hum**2;
wh=wind*hum;
th=temp*hum;
tw=temp*wind;
run;

proc logistic data = m descending;  
model rainfall=temp hum wind temp2 hum2 wind2 wh th tw/selection=backward; 
run; 
quit;

proc logistic data=m descending;
model rainfall=temp hum wind wind2 th/rsquare influence lackfit;
run;

data test;
input temp wind hum @@;
cards;
11.3 2.2 69.8 10.1 1.6 71.3
8.5 1.9 65.5 7.5 1.6 64.1
11.9 2.4 70.8
;
run;

data test;
set test;
wind2=wind**2;
th=temp*hum;
run;

data test;
set test;
prob=1/(1+exp(18.0388+0.3006*temp-0.1499*hum-5.0522*wind+0.7164*wind2-0.00369*th));
run;
