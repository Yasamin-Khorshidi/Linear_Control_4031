clear all; close all; clc;

%% q4
s=zpk('s');
g= (-(s + 1)*(s + 2)*(s + 3)*(s + 4))/(s^3*(s + 100))
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