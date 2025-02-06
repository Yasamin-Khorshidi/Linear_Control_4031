clear all; close all; clc;

s=zpk('s');
%%

g= 5*exp(-2*s)*(s+1)/((5*s+1)*s)

%%
figure
bode(g)
grid on;
margin(g)
figure
nyquist(g)
grid on;
figure
nichols(g)
grid on;
hold on;

