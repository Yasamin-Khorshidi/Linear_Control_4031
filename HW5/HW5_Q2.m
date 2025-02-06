clear all; close all; clc;

s=zpk('s');
%%

g= -sqrt(2)*(s+2)/(s^2)

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

