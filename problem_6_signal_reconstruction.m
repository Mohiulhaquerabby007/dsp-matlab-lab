% Problem 6: Signal Reconstruction
% Objective: Sample a signal and reconstruct it using MATLAB's interp1() function.

clc; clear; close all;

fm = input('Enter signal frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

t = 0:0.001:1;
x = sin(2*pi*fm*t);

ts = 0:1/fs:1;
xs = sin(2*pi*fm*ts);

xr = interp1(ts,xs,t,'spline');

plot(t,x,'b',t,xr,'r--');
legend('Original','Reconstructed');
title('Signal Reconstruction');
grid on;
