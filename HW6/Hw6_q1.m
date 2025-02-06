clear all; close all; clc;
s=zpk('s');
%%
g= 10/(s*(s+3)*(s^2+2*s+5))
%%
figure
subplot(2,1,1)
bode(g)
grid on;
margin(g)
subplot(2,1,2)
bode(60*g)
grid on;
margin(60*g)
nyquist(g)
grid on;
figure
nichols(g)
grid on;
hold on;
