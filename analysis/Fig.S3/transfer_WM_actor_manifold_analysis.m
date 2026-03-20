



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











figure
subplot(2,3,1)
for k=1:1
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'r','linewidth',1);
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
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'g','linewidth',1);
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
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'b','linewidth',1);
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
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'m','linewidth',1);
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
    h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'k','linewidth',1);
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



























% 
% 
% figure
% subplot(2,3,1)
% for k=1:2
%     h1=plot3(score((k-1)*500+1:(k-1)*500+500,1),score((k-1)*500+1:(k-1)*500+500,2),score((k-1)*500+1:(k-1)*500+500,3),'linewidth',2,'color','r');
%     hold on
% end
% set(gca,'fontsize',10)
% xlabel('PC1')
% ylabel('PC2')
% zlabel('PC3')
% box off
% xlim([-10,10])
% ylim([-10,10])
% title('Stage - 1')
% 
% subplot(2,3,2)
% for k=50:51
%     h1=plot3(score((k-1)*500+1:(k-1)*500+500,1),score((k-1)*500+1:(k-1)*500+500,2),score((k-1)*500+1:(k-1)*500+500,3),'linewidth',2,'color','g');
%     hold on
% end
% set(gca,'fontsize',10)
% xlabel('PC1')
% ylabel('PC2')
% zlabel('PC3')
% box off
% xlim([-10,10])
% ylim([-10,10])
% title('Stage - 50')
% 
% subplot(2,3,3)
% for k=100:101
%     h1=plot3(score((k-1)*500+1:(k-1)*500+500,1),score((k-1)*500+1:(k-1)*500+500,2),score((k-1)*500+1:(k-1)*500+500,3),'linewidth',2,'color','b');
%     hold on
% end
% set(gca,'fontsize',10)
% xlabel('PC1')
% ylabel('PC2')
% zlabel('PC3')
% box off
% xlim([-10,10])
% ylim([-10,10])
% title('Stage - 101')
% 
% subplot(2,3,4)
% for k=160:161
%     h1=plot3(score((k-1)*500+1:(k-1)*500+500,1),score((k-1)*500+1:(k-1)*500+500,2),score((k-1)*500+1:(k-1)*500+500,3),'linewidth',2,'color','m');
%     hold on
% 
% end
% set(gca,'fontsize',10)
% xlabel('PC1')
% ylabel('PC2')
% zlabel('PC3')
% box off
% xlim([-10,10])
% ylim([-10,10])
% title('Stage - 161')
% 
% subplot(2,3,5)
% % for k=238:238
% %     h1=plot3(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),score((k-1)*500+1:k*500,3),'k');
% %     hold on
% % end
% % set(gca,'fontsize',10)
% % hold on
% for k=[238,239]
%     h1=plot3(score((k-1)*500+1:(k-1)*500+500,1),score((k-1)*500+1:(k-1)*500+500,2),score((k-1)*500+1:(k-1)*500+500,3),'linewidth',2,'color','k');
%     hold on
% 
% end
% set(gca,'fontsize',10)
% xlabel('PC1')
% ylabel('PC2')
% zlabel('PC3')
% box off
% title('Stage - 239')
% 

% 
% 
% figure
% for k=1:1
%     h1=plot(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),'r');
%     hold on
% end
% 
% set(gca,'fontsize',15)
% xlabel('PC1')
% ylabel('PC2')
% box off
% xlim([-10,10])
% ylim([-10,10])
% hold on
% for k=75:75
%     h2=plot(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),'g');
%     hold on
% end
% 
% hold on
% for k=101:101
%     h3=plot(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),'b');
%     hold on
% end
% 
% hold on
% for k=161:161
%     h4=plot(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),'m');
%     hold on
% end
% 
% 
% hold on
% for k=239:239
%     h5=plot(score((k-1)*500+1:k*500,1),score((k-1)*500+1:k*500,2),'k');
%     hold on
% end
% set(gca,'fontsize',15)
% xlabel('PC1')
% ylabel('PC2')
% box off
% xlim([-10,10])
% ylim([-10,10])
% legend('1','75','101','161','239')
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
% figure
% d = score((1-1)*500+1:(2-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'r')
% hold on
% d = score((75-1)*500+1:(76-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'g')
% hold on
% d = score((101-1)*500+1:(102-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% plot(power_line/N,'b')
% hold on
% d = score((161-1)*500+1:(162-1)*500,1)';
% N = length(d);
% han = hanning(N);
% x = fft(han'.*d,N);
% power_line=abs(x).^2;
% 
% plot(power_line/N,'m')
% hold on
% d = score((239-1)*500+1:(240-1)*500,1)';
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
% title('PC1')
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







