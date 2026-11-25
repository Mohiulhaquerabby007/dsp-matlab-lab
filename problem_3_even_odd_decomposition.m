% Problem 3: Even and Odd Decomposition
% Objective: Decompose a discrete signal into even and odd components.

clc; clear; close all;

x = input('Enter an odd-length signal: ');
if mod(length(x),2)==0
    error('Signal length must be odd!');
end

n = -(length(x)-1)/2:(length(x)-1)/2;
xe = (x+fliplr(x))/2;
xo = (x-fliplr(x))/2;

subplot(3,1,1); stem(n,x); title('Original');
subplot(3,1,2); stem(n,xe); title('Even');
subplot(3,1,3); stem(n,xo); title('Odd');

disp('Verification:');
disp(xe+xo);
