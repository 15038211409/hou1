X1=linspace(0,0,5);
X2=linspace(0,0,5);
X1(1)=54;
X1(2)=81;
X1(3)=86;
X1(4)=76;
X1(5)=100;
X2(1)=35;
X2(2)=60;
X2(3)=55;
X2(4)=45;
X2(5)=63;
plot(X1,'r-*');
hold on
 
plot(X2,'b-o');
hold on
 
 
xlim([1,5]);
ylim([20,150]);
set(gca,'FontSize',13);

legend('apriori','FP-growth');