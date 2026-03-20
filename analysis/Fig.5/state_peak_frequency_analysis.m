



delta_all_all=[];

disp(1)
load('F:\manifold_datasets\run_transfer_dataset\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    disp(kk)
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    disp(kk)
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    disp(kk)
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    disp(kk)
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
score=score(:,1:10);
delta = [];
for k=1:239
    disp(k)
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

[coeff,score,latent]=pca(state_1536_2_cat');
score=score(:,1:10);
delta = [];
for k=1:239
      disp(k)
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

[coeff,score,latent]=pca(state_1536_3_cat');
score=score(:,1:10);
delta = [];
for k=1:239
      disp(k)
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

[coeff,score,latent]=pca(state_1536_4_cat');
score=score(:,1:10);
delta = [];
for k=1:239
      disp(k)
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








































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\wm_dataset_zhengli\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
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

[coeff,score,latent]=pca(state_1536_2_cat');
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

[coeff,score,latent]=pca(state_1536_3_cat');
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

[coeff,score,latent]=pca(state_1536_4_cat');
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

delta_all_all_transfer_wm_no_actor = delta_all_all;













































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\part_wm_dataset_zhengli\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
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

[coeff,score,latent]=pca(state_1536_2_cat');
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

[coeff,score,latent]=pca(state_1536_3_cat');
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

[coeff,score,latent]=pca(state_1536_4_cat');
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

delta_all_all_transfer_part_wm_no_actor = delta_all_all;












































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\part_wm_actor_dataset_zhengli\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
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

[coeff,score,latent]=pca(state_1536_2_cat');
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

[coeff,score,latent]=pca(state_1536_3_cat');
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

[coeff,score,latent]=pca(state_1536_4_cat');
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

delta_all_all_transfer_part_wm_part_actor = delta_all_all;























































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\without_wm_zhengli\actor_dataset_zhengli\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
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

[coeff,score,latent]=pca(state_1536_2_cat');
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

[coeff,score,latent]=pca(state_1536_3_cat');
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

[coeff,score,latent]=pca(state_1536_4_cat');
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

delta_all_all_transfer_actor_no_wm = delta_all_all;




































delta_all_all=[];

disp(1)
load('F:\manifold_datasets\run_dataset\state_1536_time.mat')

state_1536_1_cat=[];
for kk=1:length(state_1536_1)
    
    now=state_1536_1{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_1_cat=[state_1536_1_cat,spike_all];
end


state_1536_2_cat=[];
for kk=1:length(state_1536_2)
    
    now=state_1536_2{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_2_cat=[state_1536_2_cat,spike_all];
end



state_1536_3_cat=[];
for kk=1:length(state_1536_3)
    
    now=state_1536_3{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_3_cat=[state_1536_3_cat,spike_all];
end



state_1536_4_cat=[];
for kk=1:length(state_1536_4)
    
    now=state_1536_4{kk};
    spike_all=[];
    for k=1:1536
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    state_1536_4_cat=[state_1536_4_cat,spike_all];
end



[coeff,score,latent]=pca(state_1536_1_cat');
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

[coeff,score,latent]=pca(state_1536_2_cat');
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

[coeff,score,latent]=pca(state_1536_3_cat');
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

[coeff,score,latent]=pca(state_1536_4_cat');
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

delta_all_all_no_transfer = delta_all_all;
%%

% delta_all_all_transfer_run,delta_all_all_transfer_wm_no_actor,delta_all_all_transfer_part_wm_no_actor,delta_all_all_transfer_part_wm_part_actor,delta_all_all_transfer_actor_no_wm
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

mean_value =[];
std_value = [];
for s=1:size(delta_all_all_transfer_wm_no_actor,2)
    now = delta_all_all_transfer_wm_no_actor(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_transfer_wm_no_actor = mean_value;
std_value_transfer_wm_no_actor = std_value;

mean_value =[];
std_value = [];
for s=1:size(delta_all_all_transfer_part_wm_no_actor,2)
    now = delta_all_all_transfer_part_wm_no_actor(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_transfer_part_wm_no_actor = mean_value;
std_value_transfer_part_wm_no_actor = std_value;


mean_value =[];
std_value = [];
for s=1:size(delta_all_all_transfer_part_wm_part_actor,2)
    now = delta_all_all_transfer_part_wm_part_actor(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_transfer_part_wm_part_actor = mean_value;
std_value_transfer_part_wm_part_actor = std_value;

mean_value =[];
std_value = [];
for s=1:size(delta_all_all_transfer_actor_no_wm,2)
    now = delta_all_all_transfer_actor_no_wm(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_transfer_actor_no_wm = mean_value;
std_value_transfer_actor_no_wm = std_value;


mean_value =[];
std_value = [];
for s=1:size(delta_all_all_no_transfer,2)
    now = delta_all_all_no_transfer(:,s);
%     index=find(now<5);
%     now = now (index);
    mean_value = [mean_value,mean(now)];
    std_value = [std_value, std(now)];
end
mean_value_no_transfer = mean_value;
std_value_no_transfer = std_value;







figure
shadedErrorBar(1:length(mean_value_transfer_run),mean_value_transfer_run,std_value_transfer_run/3,'lineProps',{'-','color',[40/255,120/255,181/255]})
hold on
h1 = plot(mean_value_transfer_run,'color',[40/255,120/255,181/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_transfer_wm_no_actor),mean_value_transfer_wm_no_actor,std_value_transfer_wm_no_actor/3,'lineProps',{'-','color',[154/255,201/255,219/255]})
hold on
h2 = plot(mean_value_transfer_wm_no_actor,'color',[154/255,201/255,219/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_transfer_part_wm_no_actor),mean_value_transfer_part_wm_no_actor,std_value_transfer_part_wm_no_actor/3,'lineProps',{'-','color',[137/255,131/255,191/255]})
hold on
h3 = plot(mean_value_transfer_part_wm_no_actor,'color',[137/255,131/255,191/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_transfer_part_wm_part_actor),mean_value_transfer_part_wm_part_actor,std_value_transfer_part_wm_part_actor/3,'lineProps',{'-','color',[255/255,190/255,122/255]})
hold on
h4 = plot(mean_value_transfer_part_wm_part_actor,'color',[255/255,190/255,122/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_transfer_actor_no_wm),mean_value_transfer_actor_no_wm,std_value_transfer_actor_no_wm/3,'lineProps',{'-','color',[248/255,172/255,140/255]})
hold on
h5 = plot(mean_value_transfer_actor_no_wm,'color',[248/255,172/255,140/255],'linewidth',2);
hold on
shadedErrorBar(1:length(mean_value_no_transfer),mean_value_no_transfer,std_value_no_transfer/3,'lineProps',{'-','color',[200/255,36/255,35/255]})
hold on
h6 = plot(mean_value_no_transfer,'color',[200/255,36/255,35/255],'linewidth',2);
hold on
xlabel('Stage')
ylabel('Peak Frequency')
set(gca,'fontsize',25)
set(gca,'linewidth',2)
box off
title('State')
set(gca, 'XScale', 'log', 'YScale', 'log');
legend([h1,h2,h3,h4,h5,h6],{'Transfer All Parameters','Transfer World Model','Transfer Part of World Model','Transfer Part of World Model and Actor','Transfer Actor','No Transfer'})
ylim([0,80])



% walk_512_value = delta_all_all_walk(:,239)/500;
% run_512_value = delta_all_all_run(:,239)/500;
% transfer_run_512_value = delta_all_all_transfer_run(:,239)/500;