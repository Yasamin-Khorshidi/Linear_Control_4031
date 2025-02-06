clear all; close all; clc;

%% q5
s=zpk('s');
g= (s+10)/((s+100))
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
