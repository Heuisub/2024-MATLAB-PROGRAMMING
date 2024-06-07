%헷갈린다, python에서 사용했던 matplotlib.pyplot들 이 많이 보인다.
plot(x,y) % x and y must be of same size
plot(x, y, ‘line specifiers', 'PropertyName', PropertyValue)

%line specifiers
'r-o' %red solid line circle
'b--d' % blue dashed line diamond
...

%PropertyName
'LineWidth',2 % LineWidth
'MarkerSize' ,12 % Marker size
'MarkerEdgeColor','g'
'MarkerFaceColor','y'

% Example
plot(x,y,'-mo', 'MarkerSize',12, 'MarkerEdgeColor','g', 'MarkerFaceColor', 'y', 'LineWidth', 2)

%fplot
fplot('function', limits, 'Line Specifiers')

%Example
fplot('x^2+4*sin(2*x)-1', [-3,3])
func='sin(t^2)/t^2'; fplot(func,[-5, 5])

%Plot Multiple Graphs in Same Plot
plot(X1, Y1, [LineSpec1], X2, Y2, [LineSpec2], X3, Y3, [LineSpec3])

%Example
plot(x, y, '-r', u, v, '--b', t, h, 'g:')
plot(x, y, '-b', x, yd, '--r', x, ydd, ':k')

%hold
plot(x, y, '-b') 
hold on % 이거 해줘야 이것도 같이 출력됨
plot( x, yd, '--r') 
plot( x, ydd, ':k') 
hold off

%line
line(X, Y, ‘PropertyName’, PropertyValue)
line(x, y, 'linestyle', '--', 'color', 'r', 'marker', 'o') %line does not have line specifier

gtext('text') % Place the "text" Using the mouse
text(x,y,'text',PropertyName, PropertyValue) %at position (x,y) display text
	\bf %볼드
	\it %기울임
	\rm %기본
	\fontname{}
	\fontsize{}
	\color{}
	%example
	gtext('\fontname{Times New Roman} \fontsize{15}x(\itt\rm)=3.5^{-0.5\itt} \rmcos(2\pi\itt\rm)')
	
xlabel('text') % x축
ylabel('text') % y축
axis ([xmin,xmax,ymin,ymax]) % xmin ~ xmax, ymin ~ ymax 
	axis tight
	axis equal
	axis normal

%log
semilogx(x,y)
semilogy(x,y)
loglog(x,y)

%errorbar
errorbar(x,y,e)

%bar plot
bar(x,y) %Vertical Bar Plot
barh(x,y) %Horizontal Bar Plot

%besides
staris(x,y) % stairs
stem(x,y) % stem
pie(grd) % pie

%histogram
hist(y)
hist(y, nbins) % nbins 만큼 나눠서 나옴
hist(y,x) % x is a vector
[n,x] = hist(y) %n = 개수, x = 중앙값
[n,x] = hist(y,nbins)
n = hist(y,x)

%polar
polar(theta, radius, 'line specifiers')

%subplot
subplot(m, n, p) % m * n at position
