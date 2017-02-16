load C1.mat;
load C2.mat;
%load C3.mat;

load B1.mat;
load B2.mat;
%load B3.mat;

%X1 = [1000,1200,1400,1600,1800,2000,2200,2400,2600,2800];
X=1000:222:3000;
%X=1:1:10;

errorbar(X,B1,C1,'r-*');
hold on

errorbar(X,B2,C2,'b-o');
hold on

%errorbar(X,B3,C3,'k-s');
%hold on
xlim([1000,3000]);
%ylim([1,50]);
set(gca,'FontSize',13);
xlabel('Size of Data (GByte)');
ylabel('Transfer End Time (minutes)');
%legend('Imp2FPFB','Greedy2FPFB','Opt2FPFB');
legend({'Imp2FPFB','Greedy2FPFB'},'Location','NorthWest');
