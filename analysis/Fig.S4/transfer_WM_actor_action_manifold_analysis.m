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


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:10);

figure
for k=1:1
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[40,120,181]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
zlim([-10,10])
title('Training Stage 0%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-33,12)

figure
for k=51:51
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[154,201,219]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
zlim([-10,10])
title('Training Stage 25%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-33,12)
figure
for k=121:121
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[248,172,140]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
zlim([-10,10])
title('Training Stage 50%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-33,12)
figure
for k=161:161
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[255,136,132]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
zlim([-10,10])
title('Training Stage 75%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-33,12)


figure
for k=239:239
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[200,36,35]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-10,10])
ylim([-10,10])
zlim([-10,10])
title('Training Stage 100%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
% ax = gca;
% [az, el] = view(ax); 
view(-33,12)

% 
% figure
% d = score((1-1)*500+1:(2-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,350])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC2 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')

% figure
% d = score((1-1)*500+1:(2-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,600])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC3 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')

figure
d = score((1-1)*500+1:(2-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
hold on

d = score((121-1)*500+1:(122-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
hold on

d = score((181-1)*500+1:(182-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,3)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
hold on
xlim([3,80])
ylim([0,800])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',25)
box off
title('PC1 Power Spectrum')
legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')










































load('state_1536_time')

state_1536_1_cat=[];
for kk=1:length(state_1536_2)
    disp(kk)
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
       spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end

[coeff,score,latent]=pca(state_1536_1_cat');
score=score(:,1:10);


figure
for k=1:1
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[40,120,181]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-8,8])
ylim([-8,8])
zlim([-8,8])
title('Training Stage 0%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-5,20)

figure
for k=51:51
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[154,201,219]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-8,8])
ylim([-8,8])
zlim([-8,8])
title('Training Stage 25%')
grid on
set(gca,'fontsize',25)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-5,20)

figure
for k=121:121
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[248,172,140]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-8,8])
ylim([-8,8])
zlim([-8,8])
title('Training Stage 50%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-5,20)

figure
for k=181:181
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[255,136,132]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-8,8])
ylim([-8,8])
zlim([-8,8])
title('Training Stage 75%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-5,20)


figure
for k=239:239
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[200,36,35]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-8,8])
ylim([-8,8])
zlim([-8,8])
title('Training Stage 100%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
% ax = gca;
% [az, el] = view(ax); 
view(-5,20)
% 
% 
% figure
% d = score((1-1)*500+1:(2-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,350])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC2 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')
% ylim([0,100])

figure
d = score((1-1)*500+1:(2-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
hold on

d = score((121-1)*500+1:(122-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
hold on

d = score((181-1)*500+1:(182-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
hold on
xlim([3,80])
ylim([0,20])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',25)
box off
title('PC1 Power Spectrum')
legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')

% figure
% d = score((1-1)*500+1:(2-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,100])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC3 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')
% 




























































load('actor_12_time')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    disp(kk)
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
       spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end

[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);


figure
for k=1:1
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[40,120,181]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-15,15])
ylim([0,25])
zlim([-30,-10])
title('Training Stage 0%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-17,55)

figure
for k=51:51
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[154,201,219]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-15,15])
ylim([-15,15])
zlim([-15,15])
title('Training Stage 25%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-17,55)
figure
for k=121:121
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[248,172,140]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-15,15])
ylim([-15,15])
zlim([-15,15])
title('Training Stage 50%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-17,55)
figure
for k=191:191
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[255,136,132]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-15,15])
ylim([-15,15])
zlim([-15,15])
title('Training Stage 75%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
view(-17,55)

figure
for k=239:239
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'color',[200,36,35]/255,'linewidth',2);
    hold on
end
set(gca,'fontsize',10)
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
box off
xlim([-15,15])
ylim([-15,15])
zlim([-15,15])
title('Training Stage 100%')
grid on
set(gca,'fontsize',27)
set(gca,'linewidth',2)
set(gcf,'Position',[0,0,500,400])
ax = gca;
view(-17,55)

% 
% figure
% d = score((1-1)*500+1:(2-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,2)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,550])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC3 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')
% ylim([0,300])

figure
d = score((1-1)*500+1:(2-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)

hold on
d = score((51-1)*500+1:(52-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
hold on

d = score((121-1)*500+1:(122-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
hold on

d = score((181-1)*500+1:(182-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
hold on

d = score((239-1)*500+1:(240-1)*500,1)';
N = length(d);
han = hanning(N);
x = fft(han'.*d,N);
power_line=abs(x).^2;
plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
hold on
xlim([3,80])
ylim([0,1000])
xlabel('f')
ylabel('P')
set(gca,'linewidth',2)
set(gca,'fontsize',25)
box off
title('PC1 Power Spectrum')
legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')
% 
% figure
% d = score((1-1)*500+1:(2-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[40,120,181]/255,'linewidth',2)
% 
% hold on
% d = score((51-1)*500+1:(52-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[154,201,219]/255,'linewidth',2)
% hold on
% 
% d = score((121-1)*500+1:(122-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[248,172,140]/255,'linewidth',2)
% hold on
% 
% d = score((181-1)*500+1:(182-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[255,136,132]/255,'linewidth',2)
% hold on
% 
% d = score((239-1)*500+1:(240-1)*500,3)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'color',[200,36,35]/255,'linewidth',2)
% hold on
% xlim([3,80])
% ylim([0,500])
% xlabel('f')
% ylabel('P')
% set(gca,'linewidth',2)
% set(gca,'fontsize',15)
% box off
% title('PC2 Power Spectrum')
% legend('Training Stage 0%','Training Stage 25%','Training Stage 50%','Training Stage 75%','Training Stage 100%')
% 
