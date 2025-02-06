clear all; close all; clc;
s=zpk('s');
g= 1/(s*(s+1)*(s+10))
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
