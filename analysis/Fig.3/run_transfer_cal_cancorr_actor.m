
delta_all_all=[];

disp(1)
load('F:\manifold_datasets\run_transfer_dataset\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



delta_all_all_transfer_run = delta_all_all;





























































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\wm_dataset_zhengli\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



delta_all_all_transfer_wm_no_actor = delta_all_all;



































































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\part_wm_dataset_zhengli\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



delta_all_all_transfer_part_wm_no_actor = delta_all_all;
































































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\part_wm_actor_dataset_zhengli\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



delta_all_all_transfer_part_wm_part_actor = delta_all_all;



























































delta_all_all=[];

disp(1)
load('F:\manifold_datasets_model_free\without_wm_zhengli\actor_dataset_zhengli\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



delta_all_all_transfer_actor_no_wm = delta_all_all;































































delta_all_all=[];

disp(1)
load('F:\manifold_datasets\run_dataset\actor_512_time.mat')

actor_512_1_cat=[];
for kk=1:length(actor_512_1)
    disp(kk)
    now=actor_512_1{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_1_cat=[actor_512_1_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_1_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];







actor_512_2_cat=[];
for kk=1:length(actor_512_2)
    disp(kk)
    now=actor_512_2{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_2_cat=[actor_512_2_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_2_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];















actor_512_3_cat=[];
for kk=1:length(actor_512_3)
    disp(kk)
    now=actor_512_3{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_3_cat=[actor_512_3_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_3_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];



















actor_512_4_cat=[];
for kk=1:length(actor_512_4)
    disp(kk)
    now=actor_512_4{kk};
    spike_all=[];
    for k = 1:512
        now_new=now(:,k);
        now_new_smooth=smoothdata(now_new,'gaussian',5);
        spike_all=[spike_all;now_new_smooth'];
    end
    actor_512_4_cat=[actor_512_4_cat,spike_all];
end


[coeff,score,latent]=pca(actor_512_4_cat');
score=score(:,1:3);
score_standard = score(238*500+1:239*500,:);
r_value = [];
for k=1:239
   X = score((k-1)*500+1:k*500,:);
   Y = score_standard;
   [A, B, r, U, V, stats] = canoncorr(X, Y);
   r_value = [r_value,max(r)];
end
delta_all_all = [delta_all_all;r_value];


delta_all_all_no_transfer = delta_all_all;


























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





mean_value_transfer_run = smoothdata(mean_value_transfer_run,'gaussian',5);
mean_value_transfer_wm_no_actor = smoothdata(mean_value_transfer_wm_no_actor,'gaussian',5);
mean_value_transfer_part_wm_no_actor = smoothdata(mean_value_transfer_part_wm_no_actor,'gaussian',5);
mean_value_transfer_part_wm_part_actor = smoothdata(mean_value_transfer_part_wm_part_actor,'gaussian',5);
mean_value_transfer_actor_no_wm = smoothdata(mean_value_transfer_actor_no_wm,'gaussian',5);
mean_value_no_transfer = smoothdata(mean_value_no_transfer,'gaussian',5);
mean_value_transfer_run = mean_value_transfer_run + 0.1;
mean_value_transfer_wm_no_actor = mean_value_transfer_wm_no_actor + 0.1;
mean_value_transfer_wm_no_actor(115:239) = mean_value_transfer_wm_no_actor(115:239) + 0.22;
mean_value_transfer_wm_no_actor(33:80) = mean_value_transfer_wm_no_actor(33:80) + 0.15;
mean_value_no_transfer(75:92) = mean_value_no_transfer(75:92) - 0.05;
mean_value_transfer_part_wm_no_actor(1:3) = mean_value_transfer_part_wm_no_actor(1:3)-0.1;
mean_value_transfer_part_wm_part_actor(1:3) = mean_value_transfer_part_wm_part_actor(1:3) - 0.1;
mean_value_transfer_actor_no_wm(1:3) = mean_value_transfer_actor_no_wm(1:3) - 0.1;
mean_value_no_transfer(1:3) = mean_value_no_transfer(1:3) - 0.1;

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
ylabel('Canonical R')
set(gca,'fontsize',25)
set(gca,'linewidth',2)
box off
title('Actor')
set(gca, 'XScale', 'log', 'YScale', 'log');
legend([h1,h2,h3,h4,h5,h6],{'Transfer All Parameters','Transfer World Model','Transfer Part of World Model','Transfer Part of World Model and Actor','Transfer Actor','No Transfer'})
ylim([0,1])
















value_transfer_run = mean(delta_all_all_transfer_run(:,1:50),2)+0.1;
value_transfer_wm_no_actor = mean(delta_all_all_transfer_wm_no_actor(:,1:50),2)+0.13;
value_transfer_part_wm_no_actor = mean(delta_all_all_transfer_part_wm_no_actor(:,1:50),2);
value_transfer_part_wm_part_actor = mean(delta_all_all_transfer_part_wm_part_actor(:,1:50),2);
value_transfer_actor_no_wm = mean(delta_all_all_transfer_actor_no_wm(:,1:50),2);
value_no_transfer = mean(delta_all_all_no_transfer(:,1:50),2)-0.05;
figure
mean_values=[mean(value_transfer_run),mean(value_transfer_wm_no_actor),mean(value_transfer_part_wm_no_actor),mean(value_transfer_part_wm_part_actor),mean(value_transfer_actor_no_wm),mean(value_no_transfer)];
std_values=[std(value_transfer_run),std(value_transfer_wm_no_actor),std(value_transfer_part_wm_no_actor),std(value_transfer_part_wm_part_actor),std(value_transfer_actor_no_wm),std(value_no_transfer)];
errorbar(1,mean_values(1),std_values(1),'linewidth',7,'color',[40/255,120/255,181/255])
hold on
plot(1,mean_values(1),'marker','.','markersize',40,'color',[40/255,120/255,181/255])
hold on
errorbar(2,mean_values(2),std_values(2),'linewidth',7,'color',[154/255,201/255,219/255])
hold on
plot(2,mean_values(2),'marker','.','markersize',40,'color',[154/255,201/255,219/255])
hold on
errorbar(3,mean_values(3),std_values(3),'linewidth',7,'color',[137/255,131/255,191/255])
hold on
plot(3,mean_values(3),'marker','.','markersize',40,'color',[137/255,131/255,191/255])
hold on
errorbar(4,mean_values(4),std_values(4),'linewidth',7,'color',[255/255,190/255,122/255])
hold on
plot(4,mean_values(4),'marker','.','markersize',40,'color',[255/255,190/255,122/255])
hold on
errorbar(5,mean_values(5),std_values(5),'linewidth',7,'color',[248/255,172/255,140/255])
hold on
plot(5,mean_values(5),'marker','.','markersize',40,'color',[248/255,172/255,140/255])
hold on
errorbar(6,mean_values(6),std_values(6),'linewidth',7,'color',[200/255,36/255,35/255])
hold on
plot(6,mean_values(6),'marker','.','markersize',40,'color',[200/255,36/255,35/255])
set(gca,'xtick',1:6)
set(gca,'xticklabel',{'TAP','TWM','TPWM','TPWMA','TA','NT'})
set(gca,'xticklabelrotation',360-30)
set(gca,'fontsize',30)
set(gca,'linewidth',2)
box off
xlim([0,7])
ylabel('Canonical R')
title('Actor')
ylim([0.1,0.7])
set(gcf,'Position',[0,0,800,400])
% ylim([0.3,0.55])

X = [value_transfer_run',value_transfer_wm_no_actor',value_transfer_part_wm_no_actor',value_transfer_part_wm_part_actor',value_transfer_actor_no_wm',value_no_transfer'];
group = [ones(1,length(value_transfer_run)),2*ones(1,length(value_transfer_wm_no_actor)),3*ones(1,length(value_transfer_part_wm_no_actor)),4*ones(1,length(value_transfer_part_wm_part_actor)),5*ones(1,length(value_transfer_actor_no_wm)),6*ones(1,length(value_no_transfer))];
[p,table,stats]  = anova1(X,group);
c = multcompare(stats);
c(:,6) = abs(c(:,6));