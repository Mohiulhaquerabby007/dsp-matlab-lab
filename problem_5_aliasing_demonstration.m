% Problem 5: Aliasing Demonstration
% Objective: Generate a sinusoidal signal, sample it at different frequencies, and demonstrate aliasing.

clc; clear; close all;

fm = input('Enter signal frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

t = 0:0.0001:1;
x = sin(2*pi*fm*t);

n = 0:1/fs:1;
xs = sin(2*pi*fm*n);

subplot(2,1,1); plot(t,x); title('Original Signal');
subplot(2,1,2); stem(n,xs); title('Sampled Signal');

if fs < 2*fm
    disp('Aliasing Occurs!');
else
    disp('No Aliasing (Nyquist Condition Satisfied)');
end
