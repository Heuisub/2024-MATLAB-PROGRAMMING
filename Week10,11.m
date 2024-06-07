%Lecture 7
%Relational operator (관계 연산자)

if the result is true, return 1 and if false, return 0

<
>
<=
>=
==
~= (same != in C)

%Logical operator (논리 연산자)
& and
| or
~ not
xor 둘 중 하나만 1일때 1반환 (matlab에서 1이상은 1로 침) xor(7,0) == 1
&& -> &과 기능은 같지만 (A && B) 일때 A가 0이면 B는 실행하지 않고 0을 반환
|| -> |과 기능은 같지만 (A || B) 일때 A가 1이면 B는 실행하지 않고 1을 반환

ischar(A)
isempty(A)
logical(A) %ex A = [4 5 6 7] bool = [1 0 0 1] k = logical(bool) k= [1 0 0 1] A(k) = 4 7 
islogical(A) % if A is logical return 1 or return 0
isnumeric(A) 

find(A) % A 벡터 혹은 행렬의 0이 아닌 주소를 반환함
[m,n,v] = find(A) %행 열 값 반환 


%Conditional statements

if end
if else end
if elseif else end

%Switch-case statement
switch route
	case 1:
	~~~
	case 2:
	~~~
	case {3,4,5}
	~~~
	otherwise
	~~~
end

%for-end Loops
break
continue

mod(a,b) a를 b로 나눈후 나머지 반환
rem(a,b) // rem은 -도 반환함
