clear all; close all; clc;
s=zpk('s');
%%
g= 200/(s*(s+1)*(s+10))
gc= 0.05+0.1*s
%%
figure(1)
bode(g)
grid on;
margin(g)
figure(2)
bode(g*gc)
grid on;
margin(g*gc)

