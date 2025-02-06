clear all; close all; clc;

%%%%%%%%%%%%%%%%% HW2_Q3 %%%%%%%%%%%%%%%%
%%%                 wn^2                     k
%%%   M(s) = -------------------------- = -------
%%%          s^2 + 2*zeta*wn*s + wn^2     s^2+4s+k
zeta=[1 0.707 0.2155];t=0:10^-4:0.02;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:3
omega(i) = 2/zeta(i);
k(i)=omega(i)^2;
num=k(i);
den=[1 2*zeta(i)*omega(i) k(i)];
sys=tf(num,den);
x(:,i)=step(sys,t);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k
 
