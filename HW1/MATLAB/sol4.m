clc;clear all;close all;

%%%%%%%%%%%%%%%% Q4 %%%%%%%%%%%%%%%%

s = zpk('s');
sigma_Mk_Deltak = (3*s^2+3*s+1)/(s*(s+1)*(s^2+1));
Delta           = 1+3/(s^2)+(s-1)/((s^2+1)*(s+3))+...
                  (2*s+1)/((s^2+1)*(s^2+3*s+1))+...
                  1/(s+2)+3*(s-1)/((s^2)*(s^2+1)*(s+3))+...
                  3/((s^2)*(s+2));

%%%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%

T1S             = sigma_Mk_Deltak / Delta

%%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%

%% rlocus function : We can see the geometric location of the poles and draw them.

figure(1)
rlocus(Delta);
legend('Delta');

%%%%%%%%%%%%%%%

figure(2);
rlocus(T1S);
legend('T1');
