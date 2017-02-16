%load fpvb_small1.mat;
% Á½¸öÍ¼
xx = input('input first valname = ');
hh = input('input second valname = ');
yy = input('input three valname = ');
eval(['load '   xx '.mat;']);
eval(['load '   hh '.mat;']);
eval(['load '   yy '.mat;']);
%load A.mat;
%load G.mat;
eval(['AK=whos(' '''-file''' ','   ''''   xx '.mat'   '''' ')']);
eval(['GG=whos(' '''-file''' ','   ''''   hh '.mat'   '''' ')']);
eval(['OO=whos(' '''-file''' ','   ''''   yy '.mat'   '''' ')']);

A3=zeros(15,10);
A4=zeros(15,10);
A5=zeros(15,10);
B1=linspace(0,0,10);
C1=linspace(0,0,10);
B2=linspace(0,0,10);
C2=linspace(0,0,10);
B3=linspace(0,0,10);
C3=linspace(0,0,10);
Am=AK.name;
An=GG.name;
Ak=OO.name;
clearvars  AK;
clearvars  GG;
clearvars  OO;
a(1)=1;
%eval('G1'= G.name);
for i=1:15 
%a = A2(i,:);%
eval(['a'  '=' Am '(i,:);']);
B1(i) = mean(a);
C1(i) = std(a);
end
for i=1:15
%a = G1(i,:);%
eval(['a =' An '(i,:);']);
B2(i) = mean(a);
C2(i) = std(a);
end
for i=1:15
%a = G1(i,:);%
eval(['a =' Ak '(i,:);']);
B3(i) = mean(a);
C3(i) = std(a);
end

%X1 = [1000,1200,1400,1600,1800,2000,2200,2400,2600,2800];
X=1000:142.857:3000;
%X=1:1:15;

errorbar(X,B1,C1,'r-*');
hold on

errorbar(X,B2,C2,'b-o');
hold on

errorbar(X,B3,C3,'k-s');
hold on

xlim([1000,3000]);
%ylim([0,30]);
%ylim([15,70]);
set(gca,'FontSize',13);
xlabel('Size of Data (GByte)');
%xlabel('Size of Data');
ylabel('Transfer End Time (minutes)');
%legend('Imp2FPFB','Greedy2FPFB','Opt2FPFB');
legend('Imp2FPVB','Greedy2FPVB','Opt2FPVB');
%legend({xx,hh,yy},'Location','NorthWest');
%legend({xx,hh,yy},0);
