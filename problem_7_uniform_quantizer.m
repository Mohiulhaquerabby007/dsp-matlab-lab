% Problem 7: Uniform Quantizer
% Objective: Implement a uniform quantizer and quantize a sine wave.

clc; clear; close all;

f = input('Enter signal frequency (Hz): ');
bits = input('Enter number of bits: ');

t = 0:0.001:1;
x = sin(2*pi*f*t);

L = 2^bits;
d = 2/(L-1);

xq = round((x+1)/d)*d-1;
xq = min(max(xq,-1),1);

plot(t,x,'b',t,xq,'r--');
legend('Original','Quantized');
title('Uniform Quantization');
grid on;
