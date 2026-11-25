% Problem 2: Signal Operations
% Objective: Perform time shifting, amplitude scaling, and time reversal on a discrete signal.

clc; clear; close all;

x = input('Enter signal [1 2 3 4]: ');
k = input('Enter shifting amount: ');
a = input('Enter scaling factor: ');

n = 0:length(x)-1;

subplot(4,1,1); stem(n,x); title('Original');
subplot(4,1,2); stem(n+k,x); title('Time Shift');
subplot(4,1,3); stem(n,a*x); title('Amplitude Scaling');
subplot(4,1,4); stem(-fliplr(n),fliplr(x)); title('Time Reversal');
