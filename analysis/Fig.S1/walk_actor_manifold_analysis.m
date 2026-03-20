



load('actor_512_time')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k=1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
       spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end




% figure
% plot(now_new)
% 
% now_new_smooth=smoothdata(now_new,'gaussian',10);
% figure
% plot(now_new_smooth)
% 
% 
% now_new_smooth=smoothdata(now_new,'gaussian',50);
% figure
% plot(now_new_smooth)



% actor_512_2_cat=[];
% for kk=1:length(actor_512_2)
%     disp(kk)
%     now=actor_512_2{kk};
%     spike_all=[];
%     for k=1:512
%         now_new=now(:,k);
%         now_new_smooth=smoothdata(now_new,'gaussian',10);
%        spike_all=[spike_all;now_new_smooth'];
%     end
%     actor_512_2_cat=[actor_512_2_cat,spike_all];
% end
% 
% 
% 
% actor_512_3_cat=[];
% for kk=1:length(actor_512_3)
%     disp(kk)
%     now=actor_512_1{kk};
%     spike_all=[];
%     for k=1:512
%         now_new=now(:,k);
%         now_new_smooth=smoothdata(now_new,'gaussian',10);
%        spike_all=[spike_all;now_new_smooth'];
%     end
%     actor_512_3_cat=[actor_512_3_cat,spike_all];
% end
% 
% 
% 
% actor_512_4_cat=[];
% for kk=1:length(actor_512_4)
%     disp(kk)
%     now=actor_512_4{kk};
%     spike_all=[];
%     for k=1:512
%         now_new=now(:,k);
%         now_new_smooth=smoothdata(now_new,'gaussian',10);
%        spike_all=[spike_all;now_new_smooth'];
%     end
%     actor_512_4_cat=[actor_512_4_cat,spike_all];
% end
% figure
% plot(spike_all(1,:))

% y=spike_all(1,:);
% yy=smoothdata(y,'gaussian',10);
% figure
% plot(y)
% hold on
% plot(yy)


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:10);










% 

figure
subplot(2,3,1)
for k=1:1
    h1=plot(score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'r');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC2')
ylabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 1')

subplot(2,3,2)
for k=51:51
    h1=plot(score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'g');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC2')
ylabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 50')

subplot(2,3,3)
for k=101:101
    h1=plot(score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'b');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC2')
ylabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 101')

subplot(2,3,4)
for k=161:161
    h1=plot(score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'m');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC2')
ylabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 161')

subplot(2,3,5)
for k=239:239
    h1=plot(score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'k');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC2')
ylabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 239')
suptitle('Walker - 1')






























figure
subplot(2,3,1)
for k=1:1
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'r');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 1')

subplot(2,3,2)
for k=51:51
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'g');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 50')

subplot(2,3,3)
for k=101:101
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'b');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 101')

subplot(2,3,4)
for k=161:161
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'m');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 161')

subplot(2,3,5)
for k=239:239
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'k');
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
title('Stage - 239')
suptitle('Walker - 1')
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 

figure
d = score((1-1)*500+1:(2-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'r','linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'g','linewidth',2)
hold on



d = score((101-1)*500+1:(102-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'b','linewidth',2)
hold on

d = score((161-1)*500+1:(162-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'m','linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'k','linewidth',2)
hold on
xlim([3,80])
ylim([0,500])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',15)
box off
title('PC1 Power Spectrum')

legend('Stage - 1','Stage - 50','Stage - 101','Stage - 161','Stage - 239')






figure
d = score((1-1)*500+1:(2-1)*500,2)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'r','linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,2)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'g','linewidth',2)
hold on



d = score((101-1)*500+1:(102-1)*500,2)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'b','linewidth',2)
hold on

d = score((161-1)*500+1:(162-1)*500,2)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'m','linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,2)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'k','linewidth',2)
hold on
xlim([3,80])
ylim([0,500])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',15)
box off
title('PC2 Power Spectrum')

legend('Stage - 1','Stage - 50','Stage - 101','Stage - 161','Stage - 239')













figure
d = score((1-1)*500+1:(2-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'r','linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'g','linewidth',2)
hold on



d = score((101-1)*500+1:(102-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'b','linewidth',2)
hold on

d = score((161-1)*500+1:(162-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'m','linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'k','linewidth',2)
hold on
xlim([3,80])
ylim([0,500])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',15)
box off
title('PC3 Power Spectrum')

legend('Stage - 1','Stage - 50','Stage - 101','Stage - 161','Stage - 239')
% 
% 
% 
% 
% 
% 
% 
% 
% figure
% d = score((1-1)*500+1:(2-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'r')
% hold on
% d = score((75-1)*500+1:(76-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'g')
% hold on
% d = score((101-1)*500+1:(102-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'b')
% hold on
% d = score((161-1)*500+1:(162-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% 
% plot(power_line/N,'m')
% hold on
% d = score((239-1)*500+1:(240-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'k')
% hold on
% xlim([3,100])
% ylim([0,300])
% set(gca,'fontsize',15)
% xlabel('f')
% ylabel('P')
% box off
% legend('1','75','101','161','239')
% title('PC2')
% 
% 
% 
% 
% 
% power=[];
% power_max_index=[];
% for k=1:239
%     d = score((k-1)*500+1:(k)*500,1)';
%     N = length(d);
%     han = hanning(N);
%     x = fft(han'.*d,N);
%     power_line=abs(x).^2;
%     power_line = power_line/N;
%     power_now = mean(power_line(10:50));
%     [~,max_index]=max(power_line(10:50));
%     max_index = max_index+9;
%     power = [power, power_now];
%     power_max_index=[power_max_index,max_index];
% end
% 
% figure
% plot(power)
% figure
% plot(power_max_index)
% 
% 
% 
% 
% 
% power=[];
% power_max_index=[];
% for k=1:239
%     d = score((k-1)*500+1:(k)*500,2)';
%     N = length(d);
%     han = hanning(N);
%     x = fft(han'.*d,N);
%     power_line=abs(x).^2;
%     power_line = power_line/N;
%     power_now = mean(power_line(10:50));
%     [~,max_index]=max(power_line(10:50));
%     max_index = max_index+9;
%     power = [power, power_now];
%     power_max_index=[power_max_index,max_index];
% end
% 
% figure
% plot(power)
% figure
% plot(power_max_index)








delta = [];
for k=1:239
    disp(k)
    d = score((k-1)*500+1:(k)*500,2:3)';
%     d(1,:)=(d(1,:)-mean(d(1,:)))/std(d(1,:));
%     d(2,:)=(d(2,:)-mean(d(2,:)))/std(d(2,:));
    [zb, ab, bb, alphab, delta_use] = fitellipse(d);
    delta =[delta, delta_use];
end
figure
plot(delta)
ylim([0,2])

figure
%draw ellipse
x = score((1-1)*500+1:(1)*500,2:3)';
[zb, ab, bb, alphab, delta_use] = fitellipse(x);
disp(delta_use)
plot(x(1,:), x(2,:), 'r')
hold on
axis equal
X = plotellipse(zb, ab, bb, alphab);
h1 = plot(X(1,:),X(2,:),'--','linewidth',3,'color','b');
x = score((239-1)*500+1:(239)*500,2:3)';
[zb, ab, bb, alphab, delta_use] = fitellipse(x);
disp(delta_use)
plot(x(1,:), x(2,:), 'k')
hold on
axis equal
X = plotellipse(zb, ab, bb, alphab);
h2 = plot(X(1,:),X(2,:),'--','linewidth',3,'color',[255,127,111]/255);
set(gca,'fontsize',15)
set(gca,'linewidth',2)
box off
xlabel('PC2')
ylabel('PC3')
legend([h1,h2],'Stage 1 Error = 0.3568','Stage 239 Error = 0.0128')