% Problem 1: Basic Signal Generation
% Objective: Generate and plot five basic signals:
%   Unit Step, Unit Impulse, Ramp, Sine Wave, and Cosine Wave

clc; clear; close all;

a = input('Enter starting n: ');
b = input('Enter ending n: ');
f = input('Enter frequency (Hz): ');

n = a:b;
u = double(n>=0);
imp = double(n==0);
r = n.*(n>=0);

t = 0:0.001:1;
s = sin(2*pi*f*t);
c = cos(2*pi*f*t);

subplot(5,1,1); stem(n,u); title('Unit Step');
subplot(5,1,2); stem(n,imp); title('Unit Impulse');
subplot(5,1,3); stem(n,r); title('Ramp');
subplot(5,1,4); plot(t,s); title('Sine');
subplot(5,1,5); plot(t,c); title('Cosine');
