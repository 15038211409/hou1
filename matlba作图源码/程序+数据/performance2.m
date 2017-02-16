xx = input('input first valname = ','s');
hh = input('input second valname = ','s');
 
B1=linspace(0,0,10);
C1=linspace(0,0,10);
B2=linspace(0,0,10);
C2=linspace(0,0,10);
 
eval(['load '  xx '.txt;']);
eval(['load '  hh '.txt;']);
 
len= length(xx);
for i=1:len-1
t=xx(i+1);
xx(i)=t;
end
xx(len)='';
xx(len-1)='';
len= length(hh);
for i=1:len-1
t=hh(i+1);
hh(i)=t;
end
hh(len)='';
hh(len-1)='';
 
 
a(1)=1;
for i=1:10 
eval(['a'  '=' xx '(i,:);']);
B1(i) = mean(a);
C1(i) = std(a);
end
 
for i=1:10 
eval(['a'  '=' hh '(i,:);']);
B2(i) = mean(a);
C2(i) = std(a);
end
 
 
X=1:10;
 
errorbar(X,B1,C1,'r-*');
hold on
 
errorbar(X,B2,C2,'b-o');
hold on
 
 
xlim([1,10]);
set(gca,'FontSize',13);
xlabel('Size of network');
ylabel('Transfer End Time (minutes)');
legend({xx,hh},'Location','NorthEast');