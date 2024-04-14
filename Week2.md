# MATLAB 2주차

```
Summarize
Help window -> helpdesk, help plot

format rat -> 분수 형식으로 나타냄
lcd(a,b) -> a와 b의 최소공배수 곱 4, 42 -> 2^2, 2*3*7-> 2^2*3*7
gcd(a,b) -> 최대공약수 구하기

Arrays
t = [1,2,3 4 5 6] %매트랩에서 행렬은 콤마(,)또는 띄어쓰기로 구분 
Creation of row vector
t = [m:q:n] -> m부터 n-1까지 q만큼 증가
t = m:q:n
t = (m:q:n)


Creation of Column vector 
t = [1; 2; 3;] 
t = [1
		 2
		 3]

t = [1 2 3]' -> single quote

linspace(a,b,n) a부터 b까지 n개의 Row vector
-> linspace(2,14,6) -> 2부터 14까지 6개의 Row vector 만듬 2 4.4 6.8 9.2 11.6 14...
logspace(a,b,n) a부터 b까지 log를 사용해서 n개를 만듬
-> logspace(0,3,4) -> 1 10 100 1000

complex number 생성할때 띄어쓰기 금지!
5 - 2i -> 5, -2i로 생성됨 따라서 5-2i로 생성하기

Creating 2D Arrays
A = [1 2 3; 4 5 6; 7 8 9] 또는
A = [1 2 3
		 4 5 6
		 7 8 9]
		 
Transpose Row -> Column or Column -> Row
vt = v'
xt = x'


complex number의 경우 Transpose를 하면 부호가 바뀌게 되지만
ex) v=[1+2i 3+4i] v' = [1-2i 3-4i] v.' 을 하면 v.' = [1+2i 3+4i] 그대로 보존됨

다른 프로그래밍들과 다르게 v(0)이 아닌 v(1)로 시작 v(1) = 1+2i

Row vector -> Column vector
vt = v(:) -> [1,2,3] -> [1
                         2
                         3]
```
