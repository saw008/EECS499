% EECS 499 - Homework 1
% Author: Hao Li
% Case ID: hxl1033
clear;
clc;
%% P1
a = 0;
b = 1;
N1 = 100;
N2 = 1000;
N3 = 100000;
x1 = normrnd(a, b, N1, 1);
x2 = normrnd(a, b, N2, 1);
x3 = normrnd(a, b, N3, 1);
figure(1);
subplot(3,2,1);
histogram(x1);
subplot(3,2,2);
ksdensity(x1);
subplot(3,2,3);
histogram(x2);
subplot(3,2,4);
ksdensity(x2);
subplot(3,2,5);
histogram(x3);
subplot(3,2,6);
ksdensity(x3);
%% P2
a = 0;
b = 1.5;
N1 = 100;
N2 = 1000;
N3 = 100000;
x1 = a + (b - a).*rand(N1, 1);
x2 = a + (b - a).*rand(N2, 1);
x3 = a + (b - a).*rand(N3, 1);
figure(2);
subplot(3,2,1);
histogram(x1);
subplot(3,2,2);
ksdensity(x1);
subplot(3,2,3);
histogram(x2);
subplot(3,2,4);
ksdensity(x2);
subplot(3,2,5);
histogram(x3);
subplot(3,2,6);
ksdensity(x3);
%% P3
lower = -2;
upper = 2;
N = 100000;

x = lower + (upper - lower) * rand(N, 1);
hx = abs(x).*(x>=-1&x<=1) + 0.*(x<-1|x>1);
gx = max(hx);
accepted = lower + (upper - lower) * rand(N, 1) < (hx/gx);
samples = x(accepted);

figure(3);
subplot(2, 1, 1);
histogram(samples);
subplot(2, 1, 2);
ksdensity(samples);
%% P4
p1 = 0.3;
p2 = 0.7;
lower = -5;
upper = 5;
temp = 120000;
f1 = normrnd(0, 1, temp, 1);
f2 = normrnd(2, 0.5, temp, 1);
f1(f1>upper|f1<lower) = [];
f2(f2>upper|f2<lower) = [];
f1 = f1(1:N);
f2 = f2(1:N);
fx = p1 * f1 + p2 * f2;
figure(4);
subplot(2, 1, 1);
histogram(fx);
subplot(2, 1, 2);
ksdensity(fx);
%% P5
temp = 110000;
N = 100000;
lower = -3;
upper = 3;
X = normrnd(1, 0.5, temp, 1);
X(X>upper|X<lower) = [];
X = X(1:N);
Y = X.*X;
subplot(6,1,1);
histogram(X);
subplot(6,1,2);
histogram(Y);

temp = 1100;
N = 1000;
X = normrnd(1, 0.5, temp, 1);
X(X>upper|X<lower) = [];
X = X(1:N);
Y = X.*X;
subplot(6,1,3);
histogram(X);
subplot(6,1,4);
histogram(Y);

subplot(6,1,5);
for i = 1:N
    line([X(i), X(i)], [0, 4]);
end
subplot(6,1,6);
for i = 1:N
    line([Y(i), Y(i)], [0, 4]);
end

