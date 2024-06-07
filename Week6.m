B = [5.4 540];
fprintf(1,'%4.2f m is %6.1f mm이다, B , 6.8, 680)

fid = fopen('file_name','permission')
permission -> r(default) , w , t , a

fclose(fid)
fclose('all')
status = fclose(fid) % -1반환
status = fclose('all') % -1반환


%EXAMPLE
Vmph=10:10:100; Vkmh=Vmph*1.609;
TBL1=[Vmph; Vkmh]; % Conversion table for mph to km/h.
Flb=200:200:2000; FN=Flb*4.448;
TBL2=[Flb; FN];

fprintf(fid, 'Speed conservation table\n\n')
fprintf(fid, 'mi/h    km/h\n')
fprintf(fid, '%8.2f    %8.2f\n',TBL2)


%Save and load
save file_name
save ('file_name','var1','var2')
load file_name
load ('file_name','var1','var2')

%Read and write excel file
variable = xlsread('filename', ['sheet name'], ['range'])
A=xlsread('data', 'Sheet2', 'A1:B4')
xlswrite('filename', variable_name, ['sheet_name'], ['range'])
xlswrite('test', [13.2 -7.42 -26 3.9; 10 29.4 -51.3 91.6])

% 이번건 좀 어렵다..
