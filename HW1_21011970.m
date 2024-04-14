clc
clear all

%Problem 1
disp("Problem 1");
x = 5.1;
y = 4.2;
%(a)
a = (3/4)*x*y - (7*x)/y^2 + sqrt(x*y)
%(b)
b = (x*y)^2 - (x+y) / (x-y)

%Problem 2
disp("Problem 2");
a = 12;
b = 5.6;
c = (3*a)/(b^2);
d = ((a-b)^c) / c;
%(a)
A = (a/b) + (d-c)/(d+c) - (d-b)^2
%(b)
B = exp((d-c)/(a-2*b))+log(abs(c-d+(b/a)))

%Problem 3
disp("Problem 3");
x = 24;
a = tand(3*x)
b = (3*tand(x) - tand(x)^3) / (1 - 3*tand(x)^2)
c = cosd(4*x)
d = 8*cosd(x)^4 - 8*cosd(x)^2 + 1

%Problem 4
disp("Problem 4");
a = 15;
b = 35;
%a) 
c = sqrt(a^2+b^2);
%b)
alpha = acosd (b/c)  

%Problem 5
disp("Problem 5");
a = 11;
b = 9;
L_ABC = (1/2)*sqrt(b^2+16*a^2) + b^2/(8*a)*log((4*a+sqrt(b^2+16*a^2))/b)

%Problem 6
disp("Problem 6");
vctD = [0:3:27]
vctDop = flip(vctD)

%Problem 7
%a/
disp("Problem 7");
B = [5*linspace(1,1,4)' 2*linspace(1,1,4)' 3*linspace(1,1,4)']

%b/
F = [zeros(1,5); zeros(3,2) [(1:1:3)' (10:-2:6)' (20:6:32)']]

%Problem 8
disp("Problem 8");
a = [3 -1 5 11 -4 2];
b = [7 -9 2 13 1 -2];
c = [-2 4 -7 8 0 9];
%(a)
A = [a(3:6); b(3:6); c(3:6)]
%(b)
B = [a(1:3)' b(1:3)' c(1:3)']

%Problem 9 ??
disp("Problem 9");
B = [15:-3:3; 2:2:10; 6:6:30]
%a)
ua = [B(:,2)' B(:,4)']'
%b)
ub = [B(3,:)]'
%c)
uc = [B(:,2)' B(:,4)' B(:,5)']

%Problem 10
disp("Problem 10");
C = [1.5:0.5:5 9.6:-0.5:6.1]
D = reshape(C,4,4)
%a
Da = [D(1,:) D(3, :)]'
%b
Db = [D(:,2)' D(:,4)']
%c
Dc = [D(1,1:2) D(end-2:end,2)' D(4,1:3)]

%Problem 11
disp("Problem 11");
a = [ones(2) zeros(2)]
b = [eye(2) zeros(2) ones(2)]
c = [linspace(1,1,4); zeros(2) zeros(2)]

%Problem 12
disp("Problem 12");
A = eye(6)

A(1:3, 4:6) = 3
A(5:6,1:4) = 2