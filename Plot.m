clear all; clc;

c = 1.04; % soil cohesion (kPa)
p = 28.5; % soil internal friction angle 
r = 0.0885; % wheel radius (m)
k = 0.015; % shear displacement under wheel
Qm = 5; % max normal stress angle
Qf = 35; % angle between vertical and leading edge of wheel contact patch
amax = 15; % max normal stress (kPa)
n = 1.2; % exponent of terrain deformation 
t = 8.5; % shear stress (kPa)

acc = 0.001;


%Define the Wheel Slip, S as a function of Q
Q = 0; % angle of rotation 


a = amax*(((cos(Q) - cos(Qf))/(cos(Qm) - cos(Qf)))^n); % normal stress 
T = (c + a*tan(p)); % Let T be the variable

S = 1 - (((k/r)*log(1 - (t/T)) + (Qf - Q))/(sin(Qf) - sin(Q)));

