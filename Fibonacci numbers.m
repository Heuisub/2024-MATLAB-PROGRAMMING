clc 
clear all

f(1)=0;
f(2)=1;
for i=1:18
    f(i+2) = f(i) + f(i+1);
end

fprintf("Fibonacci numbers are :")
fprintf(" %i",f)
