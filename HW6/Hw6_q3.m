clear all; close all; clc;
s=zpk('s');
%%
g= exp(-0.4*s)/(0.2*s+1)
gc2= 5+1/s
gc1= 0.4+1/s
%%
figure(1)
bode(g)
grid on;
margin(g)
figure(2)
bode(g*gc1)
grid on;
margin(g*gc1)
figure(3)
bode(g*gc2)
grid on;
margin(g*gc2)
figure(4)
nyquist(g)
grid on;
figure
nichols(g)
grid on;
hold on;