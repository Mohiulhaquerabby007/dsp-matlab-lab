% Problem 4: Sampling of Analog Signal
% Objective: Sample an analog sine wave at Nyquist rate, above Nyquist, and below Nyquist.

clc; clear; close all;

fm = input('Enter message frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

t = 0:0.0001:1;
x = sin(2*pi*fm*t);

n = 0:1/fs:1;
xs = sin(2*pi*fm*n);

plot(t,x,'b'); hold on;
stem(n,xs,'r');
legend('Original','Sampled');
title('Sampling of Analog Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

if fs == 2*fm
    disp('Nyquist Rate');
elseif fs > 2*fm
    disp('Above Nyquist Rate');
else
    disp('Below Nyquist Rate: Aliasing');
end
