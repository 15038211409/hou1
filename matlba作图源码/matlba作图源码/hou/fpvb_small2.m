load fpvb_small2.mat;

a1 = fpvb_small2(1,:);
b1 = mean(a1);
c1 = std(a1);

a2 = fpvb_small2(2,:);
b2 = mean(a2);
c2 = std(a2);

a3 = fpvb_small2(3,:);
b3 = mean(a3);
c3 = std(a3);

a4 = fpvb_small2(4,:);
b4 = mean(a4);
c4 = std(a4);

a5 = fpvb_small2(5,:);
b5 = mean(a5);
c5 = std(a5);

a6 = fpvb_small2(6,:);
b6 = mean(a6);
c6 = std(a6);

a7 = fpvb_small2(7,:);
b7 = mean(a7);
c7 = std(a7);

a8 = fpvb_small2(8,:);
b8 = mean(a8);
c8 = std(a8);

a9 = fpvb_small2(9,:);
b9 = mean(a9);
c9 = std(a9);

a10 = fpvb_small2(10,:);
b10 = mean(a10);
c10 = std(a10);

B2 = [b1,b2,b3,b4,b5,b6,b7,b8,b9,b10];
C2 = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10];
%x = 1:1:10;

%errorbar(x,B2,C2,'b-*');
%xlabel('Size of network');
%ylabel('Transfer time');
%legend('min-2FPVB');