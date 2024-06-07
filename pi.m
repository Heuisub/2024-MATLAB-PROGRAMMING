clc 
clear all

n=[100 10000 1000000]
Est=[];
for i=1:3
    S=0;
    for j=1:n(i)
        S = S+ 1/j^2;
    end
    Est(i)=sqrt(6*S);
end
disp(Est)
