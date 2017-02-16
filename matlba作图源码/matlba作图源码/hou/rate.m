xx = input('input first valname = ');
hh = input('input second valname = ');
eval(['load '   xx '.mat;']);
eval(['load '   hh '.mat;']);
%load A.mat;
%load G.mat;
eval(['AK=whos(' '''-file''' ','   ''''   xx '.mat'   '''' ')']);
eval(['GG=whos(' '''-file''' ','   ''''   hh '.mat'   '''' ')']);
A11=AK.name;
A22=GG.name;
clearvars  AK;
clearvars  GG;
sum1=0;
sum2=0;
format short g;sum1
format short g;sum2
for i=1:15 
%a = A2(i,:);%
eval(['a'  '=' A11 '(i,:);']);
sum1 = sum1+sum(a);
end
for i=1:15 
%a = A2(i,:);%
eval(['a'  '=' A22 '(i,:);']);
sum2 = sum2+sum(a);
end
sum1
sum2
rate1=(sum2-sum1)/sum2