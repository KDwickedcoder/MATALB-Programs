%find the impulse response and step response of a system from its
%difference equation:-
n= -10:100;
a = [1 -1.8*cos(pi/16) 0.81];
b = [1 0.5 0];
h = dimpulse(b,a,length(n));
subplot(2,2,1);
stem(n,h);
title({'Impulse response' ,'from difference equation'});
g = dstep(b,a,length(n));
subplot(2,2,2);
stem(n,g);
title({'Step response ','from difference equation'});
%compute and plot the response of a given system governed by transfer
%function H(s) = (8s^2+18s+32)/s^3+6s^2+14s+24) to a given input as step
%and impulse function:-
sys = tf([8 18 32],[1 6 14 24]);
subplot(2,2,3);
step(sys);
subplot(2,2,4);
impulse(sys);