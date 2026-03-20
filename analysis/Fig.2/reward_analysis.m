
delta_all_all=[];



%%
disp(1)
load('E:\manifold_datasets\walk_dataset\reward_time.mat')


reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
%%

disp(2)


load('E:\manifold_datasets\walker_dataset1\reward_time.mat')


reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];








%%
disp(3)



load('E:\manifold_datasets\walker_dataset2\reward_time.mat')


reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];






%%



disp(4)





load('E:\manifold_datasets\walker_dataset3\reward_time.mat')


reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];









%%



disp(5)





load('E:\manifold_datasets\walker_dataset4\reward_time.mat')


reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];


delta_all_all_walk = delta_all_all;








































































































delta_all_all=[];



%%
disp(1)
load('E:\manifold_datasets\run_dataset\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];


%%

disp(2)

load('E:\manifold_datasets\run_dataset1\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];








%%
disp(3)


load('E:\manifold_datasets\run_dataset2\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];




%%



disp(4)



load('E:\manifold_datasets\run_dataset3\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];





%%



disp(5)



load('E:\manifold_datasets\run_dataset4\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];

delta_all_all_run = delta_all_all;





























































































delta_all_all=[];



%%
disp(1)

load('E:\manifold_datasets\run_transfer_dataset\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];

%%

disp(2)


load('E:\manifold_datasets\run_transfer_dataset1\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];







%%
disp(3)


load('E:\manifold_datasets\run_transfer_dataset2\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];




%%



disp(4)





load('E:\manifold_datasets\run_transfer_dataset3\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];




%%



disp(5)


load('E:\manifold_datasets\run_transfer_dataset4\reward_time.mat')

reward_temp = [];
for kk = 1:length(reward1)
    reward_now = reward1{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward2)
        reward_now = reward2{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end   
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward3)
    reward_now = reward3{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];
reward_temp = [];
for kk = 1:length(reward4)
    reward_now = reward4{kk};
    reward_use = [];
    for mm = 1:length(reward_now)
        reward_use(mm) = reward_now{mm};
    end    
    reward_temp = [reward_temp,mean(reward_use)];
end
delta_all_all = [delta_all_all;reward_temp/max(reward_temp)];

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
ylabel('Normalized Reward')
set(gca,'fontsize',26)
set(gca,'linewidth',2)
box off
legend([h1,h2,h3],{'Walk','Run','Transfer Run'})
set(gca, 'XScale', 'log', 'YScale', 'log');



walk_512_value = delta_all_all_walk(:,239)/500;
run_512_value = delta_all_all_run(:,239)/500;
transfer_run_512_value = delta_all_all_transfer_run(:,239)/500;