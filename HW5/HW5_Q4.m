clear all; close all; clc;

s=zpk('s');
for a=0.1:1:10
%%

g= 4*(a^2)/((s+a)^2)

%%
figure
bode(g)
grid on;
margin(g)
end

% figure
% nyquist(g)
% grid on;
% figure
% nichols(g)
% grid on;
% hold on;
