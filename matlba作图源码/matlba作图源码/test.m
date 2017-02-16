

Z = rand(15,15);
hb = bar3(Z,0.9,'detached');
x=1:0.1466666:3;
y=1:1:15;
set(gca,'xticklabel',x);
set(gca,'xticklabel',[]);
set(gca,'yticklabel',{'1','','3','','5','','7','8','9','10','11','12','13','14','15'})
%set(gca,'yticklabel',y);
grid on;

for j = 1 : length(hb)
        set(hb(j), 'FaceColor', [1 0 0]);
        % 设置边线颜色
        set(hb, 'EdgeColor', [0.5 0.5 0.5]);
end

hold on;

Z1 = rand(15,15);
hb1 = bar3(Z1,0.9,'detached');
for j = 1 : length(hb1)
        set(hb1(j), 'FaceColor', [0 0 1]);
        % 设置边线颜色
        set(hb1, 'EdgeColor', [0.5 0.5 0.5]);
end

hold on;

Z2 = rand(15);
hb2 = bar3(Z2,0.9,'detached');
for j = 1 : length(hb2)
        set(hb2(j), 'FaceColor', [0 1 0]);
        % 设置边线颜色
        set(hb2, 'EdgeColor', [0.5 0.5 0.5]);
end



legend([hb(1,15),hb1(1,15),hb2(1,15)],'1','2','3');

