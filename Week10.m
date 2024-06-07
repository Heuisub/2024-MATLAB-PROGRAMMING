%user defined Function
%ex radial.m
function [r,theta] = radial(x,y)
r = sqrt(x.^2 + y.^2)
theta = atand(y./x)

%untitled.m
[a,b] = radial(3,4)
-> a = 5;
	b = 53.1301
	
%anonymous functions	
name = @(인자) (함수)
%ex
f = @(x) (x^2 + 3x + 2)

%inline functions
fname = inline('함수') 
