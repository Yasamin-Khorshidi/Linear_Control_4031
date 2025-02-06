clear all; close all; clc;

%%%%%%%%%%%%%%%%% HW2_Q2 %%%%%%%%%%%%%%%%

%%%                                
kt = 1; kb = 5; f = 0.2; J = 1; ra = 2;
km = 0.8; ka = 1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s = zpk('s');
Ls = (ka*km/ra*J) / (s+(ra*f+kb*km)/(ra*J))
Ms = Ls / (1+kt*Ls)
step(Ms,Ls)
legend('L(t)','M(t)');
xlabel('t');
ylabel('step response');
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms Ls Ms
ilaplace(Ls)
ilaplace(Ms)

