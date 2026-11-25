% Problem 8: Quantization Error Analysis
% Objective: Calculate quantization error, plot error signal, and calculate Mean Squared Error (MSE).

clc; clear; close all;

f = input('Enter signal frequency (Hz): ');
bits = input('Enter number of bits: ');

t = 0:0.001:1;
x = sin(2*pi*f*t);

L = 2^bits;
d = 2/(L-1);

xq = round((x+1)/d)*d-1;
xq = min(max(xq,-1),1);

e = x-xq;
MSE = mean(e.^2);

subplot(2,1,1); plot(t,x,t,xq,'--');
legend('Original','Quantized');
title('Signal Comparison');

subplot(2,1,2); plot(t,e);
title('Quantization Error');

fprintf('MSE = %.6f\n',MSE);
