clear all; close all; clc;

%%%%%%%%%%%%%%%%% HW2_Q1 %%%%%%%%%%%%%%%%

%%%    
Mp = 44.3; ts = 1.41; tp = 0.332;
pi = 3.14;zeta = 0.464; wn=3.4*pi; k = 1;
s = zpk('s');
ex = exp(-zeta/sqrt(1-zeta^2));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ms = k*wn^2 / (s^2+2*zeta*wn*s+wn^2);
Ls = Ms / (1-Ms);
ex^(wn*ts) == 0.02;
ex^pi == Mp;
pi / (wn*sqrt(1-zeta^2)) == tp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ls
Ms

