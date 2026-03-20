
%%
%
% c=buttor10to40();
filename_1 = {'walker_1_model_1','walker_2_model_1','walker_3_model_1','walker_4_model_1','walker_1_model_2','walker_2_model_2','walker_3_model_2','walker_4_model_2','walker_1_model_3','walker_2_model_3','walker_3_model_3','walker_4_model_3','walker_1_model_4','walker_2_model_4','walker_3_model_4','walker_4_model_4','walker_5_model_1','walker_5_model_2','walker_5_model_3','walker_5_model_4'};

pc_matrix_all={};

for i=1:20
    disp(i)
    data_1_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\walk_state_1536_summary\',filename_1{i},'.mat']);
    data_1_new=data_1_new.score;
    data_2_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\walk_actor_512_summary\',filename_1{i},'.mat']);
    data_2_new=data_2_new.score;
    pc_matrix=[];
    for k=1:239


        if i==1 && k==5
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);
            figure
            plot(data_1,'linewidth',2)
            hold on
            plot(data_2,'linewidth',2)
            legend('World Model PC1','Actor PC1')
            xlabel('t')
            title('Traning Stage 0%')
            set(gca,'fontsize',15)
            set(gca,'linewidth',2)
            box off
            ylim([-15,15])
            [x1,y]=xcorr(data_1,data_2,'coeff');
        end



        if i==1 && k==239
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);
            figure
            plot(data_1,'linewidth',2)
            hold on
            plot(data_2,'linewidth',2)
            legend('World Model PC1','Actor PC1')
            xlabel('t')
            title('Traning Stage 100%')
            set(gca,'fontsize',15)
            set(gca,'linewidth',2)
            box off
            ylim([-15,15])

            [x2,y]=xcorr(data_1,data_2,'coeff');
            figure
            plot(y,x1,'linewidth',2)
            hold on
            plot(y,x2,'linewidth',2)
            xlabel('Lag')
            ylabel('Cross Correlation')
            legend('Stage 1','Stage 239')
            set(gca,'fontsize',15)
            set(gca,'linewidth',2)
            box off

        end

        matrix_now=zeros(3,3);
        for m=1:3
            for n=1:3
                data_1 = data_1_new((k-1)*500+1:k*500,m);
                data_2 = data_2_new((k-1)*500+1:k*500,n);

                [r,p]=corrcoef(data_1,data_2);
                matrix_now(m,n)=abs(r(1,2));

            end
        end

        pc_matrix(:,:,k)=matrix_now;
    end
    pc_matrix_all{i}=pc_matrix;

end


walk_correlation_matrix = pc_matrix_all;




































filename_1 = {'runner_1_model_1','runner_2_model_1','runner_3_model_1','runner_4_model_1','runner_1_model_2','runner_2_model_2','runner_3_model_2','runner_4_model_2','runner_1_model_3','runner_2_model_3','runner_3_model_3','runner_4_model_3','runner_1_model_4','runner_2_model_4','runner_3_model_4','runner_4_model_4','runner_5_model_1','runner_5_model_2','runner_5_model_3','runner_5_model_4'};

pc_matrix_all={};

for i=1:20
    disp(i)
    data_1_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\run_state_1536_summary\',filename_1{i},'.mat']);
    data_1_new=data_1_new.score;
    data_2_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\run_actor_512_summary\',filename_1{i},'.mat']);
    data_2_new=data_2_new.score;
    pc_matrix=[];
    for k=1:239


        if i==15 && k==6
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);

            [r,p]=corrcoef(data_1,data_2);


        end



        if i==15 && k==239
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);

            [r,p]=corrcoef(data_1,data_2);


        end

        matrix_now=zeros(3,3);
        for m=1:3
            for n=1:3
                data_1 = data_1_new((k-1)*500+1:k*500,m);
                data_2 = data_2_new((k-1)*500+1:k*500,n);

                [r,p]=corrcoef(data_1,data_2);
                matrix_now(m,n)=abs(r(1,2));

            end
        end

        pc_matrix(:,:,k)=matrix_now;
    end
    pc_matrix_all{i}=pc_matrix;

end


run_correlation_matrix = pc_matrix_all;












%%
%
% c=buttor10to40();
filename_1 = {'transfer_runner_1_model_1','transfer_runner_2_model_1','transfer_runner_3_model_1','transfer_runner_4_model_1','transfer_runner_1_model_2','transfer_runner_2_model_2','transfer_runner_3_model_2','transfer_runner_4_model_2','transfer_runner_1_model_3','transfer_runner_2_model_3','transfer_runner_3_model_3','transfer_runner_4_model_3','transfer_runner_1_model_4','transfer_runner_2_model_4','transfer_runner_3_model_4','transfer_runner_4_model_4','transfer_runner_5_model_1','transfer_runner_5_model_2','transfer_runner_5_model_3','transfer_runner_5_model_4'};

pc_matrix_all={};

for i=1:20
    disp(i)
    data_1_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\run_transfer_state_1536_summary\',filename_1{i},'.mat']);
    data_1_new=data_1_new.score;
    data_2_new = load(['D:\matlab 2021\matlab_program\manifold_datasets\run_transfer_actor_512_summary\',filename_1{i},'.mat']);
    data_2_new=data_2_new.score;
    pc_matrix=[];
    for k=1:239


        if i==15 && k==6
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);

            [r,p]=corrcoef(data_1,data_2);


        end



        if i==15 && k==239
            data_1 = data_1_new((k-1)*500+1:k*500,1);
            data_2 = data_2_new((k-1)*500+1:k*500,1);

            [r,p]=corrcoef(data_1,data_2);


        end

        matrix_now=zeros(3,3);
        for m=1:3
            for n=1:3
                data_1 = data_1_new((k-1)*500+1:k*500,m);
                data_2 = data_2_new((k-1)*500+1:k*500,n);

                [r,p]=corrcoef(data_1,data_2);
                matrix_now(m,n)=abs(r(1,2));

            end
        end

        pc_matrix(:,:,k)=matrix_now;
    end
    pc_matrix_all{i}=pc_matrix;

end
transfer_run_correlation_matrix = pc_matrix_all;









correlation_walk = [];
for k = 1:length(walk_correlation_matrix)
    now = walk_correlation_matrix{k};
    now = squeeze(mean(now,1));
    now = squeeze(mean(now,1));
    correlation_walk = [correlation_walk;now];
end
mean_value_walk = mean(correlation_walk,1);
std_value_walk = std(correlation_walk,0,1);




correlation_run = [];
for k = 1:length(run_correlation_matrix)
    now = run_correlation_matrix{k};
    now = squeeze(mean(now,1));
    now = squeeze(mean(now,1));
    correlation_run = [correlation_run;now];
end
mean_value_run = mean(correlation_run,1);
std_value_run = std(correlation_run,0,1);



correlation_transfer_run = [];
for k = 1:length(transfer_run_correlation_matrix)
    now = transfer_run_correlation_matrix{k};
    now = squeeze(mean(now,1));
    now = squeeze(mean(now,1));
    correlation_transfer_run = [correlation_transfer_run;now];
end
mean_value_transfer_run = mean(correlation_transfer_run,1);
std_value_transfer_run = std(correlation_transfer_run,0,1);




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
ylabel('Cross-model Correlation')
title('World Model ~ Actor')
set(gca,'fontsize',15)
set(gca,'linewidth',2)
box off

legend([h1,h2,h3],{'Walk','Run','Transfer Run'})

