
delta_all_all=[];



%%
disp(1)
load('F:\\manifold_datasets\walk_dataset\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];



%%

disp(2)



load('F:\\manifold_datasets\walker_dataset1\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];








%%
disp(3)

load('F:\\manifold_datasets\walker_dataset2\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];




%%



disp(4)




load('F:\\manifold_datasets\walker_dataset3\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];





%%



disp(5)




load('F:\\manifold_datasets\walker_dataset4\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

delta_all_all_walk = delta_all_all;













































































































delta_all_all=[];



%%
disp(1)
load('F:\\manifold_datasets\run_dataset\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];



%%

disp(2)



load('F:\\manifold_datasets\run_dataset1\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];








%%
disp(3)

load('F:\\manifold_datasets\run_dataset2\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];




%%



disp(4)




load('F:\\manifold_datasets\run_dataset3\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];





%%



disp(5)




load('F:\\manifold_datasets\run_dataset4\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

delta_all_all_run = delta_all_all;





























































































delta_all_all=[];



%%
disp(1)
load('F:\\manifold_datasets\run_transfer_dataset\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];



%%

disp(2)



load('F:\\manifold_datasets\run_transfer_dataset1\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];








%%
disp(3)

load('F:\\manifold_datasets\run_transfer_dataset2\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];




%%



disp(4)




load('F:\\manifold_datasets\run_transfer_dataset3\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];





%%



disp(5)




load('F:\\manifold_datasets\run_transfer_dataset4\actor_12_time.mat')

actor_12_1_cat=[];
for kk=1:length(actor_12_1)
    
    now=actor_12_1{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_1_cat=[actor_12_1_cat,spike_all];
end


actor_12_2_cat=[];
for kk=1:length(actor_12_2)
    
    now=actor_12_2{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_2_cat=[actor_12_2_cat,spike_all];
end



actor_12_3_cat=[];
for kk=1:length(actor_12_3)
    
    now=actor_12_3{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_3_cat=[actor_12_3_cat,spike_all];
end



actor_12_4_cat=[];
for kk=1:length(actor_12_4)
    
    now=actor_12_4{kk};
    spike_all=[];
    for k=1:12
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_12_4_cat=[actor_12_4_cat,spike_all];
end



[coeff,score,latent]=pca(actor_12_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

[coeff,score,latent]=pca(actor_12_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    d = score((k-1)*500+1:(k)*500,1)';
    N = length(d);
    han = hanning(N);
    x = fft(han'.*d,N);
    power_line=abs(x).^2;
    [~,index] = max(power_line(10:80));
    index = index+10;
    mean_power = mean(power_line(index-5:index+5));
    delta =[delta,index];
end
delta_all_all=[delta_all_all;delta];

delta_all_all_transfer_run = delta_all_all;
%%
% load('ellipse_fitting_error')
%
mean_value =[];
std_value = [];
for s=1:size(delta_all_all_walk,2)
    now = delta_all_all_walk(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_walk = mean_value;
std_value_walk = std_value;

mean_value =[];
std_value = [];
for s=1:size(delta_all_all_run,2)
    now = delta_all_all_run(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_run = mean_value;
std_value_run = std_value;

mean_value =[];
std_value = [];
for s=1:size(delta_all_all_transfer_run,2)
    now = delta_all_all_transfer_run(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_transfer_run = mean_value;
std_value_transfer_run = std_value;

figure
shadedErrorBar(1:length(mean_value_walk),mean_value_walk,std_value_walk/3,'lineProps',{'-','color',[240/255,152/255,140/255]})
hold on
h1 = plot(mean_value_walk,'color',[240/255,152/255,140/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_run),mean_value_run,std_value_run/3,'lineProps',{'-','color',[184/255,131/255,212/255]})
hold on
h2 = plot(mean_value_run,'color',[184/255,131/255,212/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_transfer_run),mean_value_transfer_run,std_value_transfer_run/3,'lineProps',{'-','color',[161/255,169/255,208/255]})
hold on
h3 = plot(mean_value_transfer_run,'color',[161/255,169/255,208/255],'linewidth',2);
xlabel('Stage')
ylabel('Peak Frequency')
set(gca,'fontsize',15)
set(gca,'linewidth',2)
box off
title('PC1')
legend([h1,h2,h3],{'Walk','Run','Transfer Run'})


walk_12_value = delta_all_all_walk(:,239);
run_12_value = delta_all_all_run(:,239)/500;
transfer_run_12_value = delta_all_all_transfer_run(:,239);