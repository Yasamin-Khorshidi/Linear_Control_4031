clear all; close all; clc;

%% q3

s=zpk('s');
g=(5*(s+1)*exp(-2*s))/(s*(5*s+1))
figure
bode(g)
grid on;
figure
nyquist(g)
grid on;
figure
nichols(g)
grid on;
hold on;
%%
