libname ct '/home/u62275281';
data overdosetest;
set ct.overdose;
proc lifetest data=overdosetest plots=(loglogs);
time days*linkage(0);
strata int;
run;
proc lifetest data=overdosetest;
time days*death(0);
strata int;
run;
