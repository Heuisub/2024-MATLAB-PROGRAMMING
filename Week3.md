# MATLAB 3주차

```
end = 마지막 요소(수?) 말하는 듯
v = [1 2]
v(end+1) = 1 -> v = [1 2 1]
v(end+1 : length(v)+3) = [3 4 5] //이런 방식으로 사용 가능

zeros(m,n) m x n의 0 행렬
ones(m,n) m x n의 1행렬

cat(dim,A,B,C''') 
dim=1 -> vector 
dim=2 -> matrix

size(벡터) -> m x n 헹령에서 m과 n알려줌
length(벡터) -> m과 n중 큰거 출력
abs(A) 절대값 A
diag(벡터) -> 대각선 만들어줌(정사각형 형태로)
v(row, col) -> (행, 열)
elements 지우고 싶으면 v(숫자) = [] 하면 됨



reshape(A,m,n) -> 행렬 A를 m x n의 형식으로 바꿈 ,n은 입력하지 않아도 자동으로 입력됨. 
find(A) = 정렬
str = '~~~'
배열방식으로 쓰고 싶으면
char = ('~~~', '~~~~') 방식 사용
```
