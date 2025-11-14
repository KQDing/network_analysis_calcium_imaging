%% Load data
clear; clc; close all;

addpath('./network_functions')

C_Con1 = load("corrdata_Ncont1.mat",'Cdat').Cdat;
Con1xy = load("corrdata_Ncont1.mat",'cellxy').cellxy;
C_Con2 = load("corrdata_Ncont2.mat",'Cdat').Cdat;
Con2xy = load("corrdata_Ncont2.mat",'cellxy').cellxy;
C_PV2 = load("corrdata_PV2.mat",'Cdat').Cdat;
PV2xy = load("corrdata_PV2.mat",'cellxy').cellxy;
C_PVA = load("corrdata_PVA.mat",'Cdat').Cdat;
PVAxy = load("corrdata_PVA.mat",'cellxy').cellxy;
C_PVB = load("corrdata_PVB.mat",'Cdat').Cdat;
PVBxy = load("corrdata_PVB.mat",'cellxy').cellxy;
C_PVC = load("corrdata_PVC.mat",'Cdat').Cdat;
PVCxy = load("corrdata_PVC.mat",'cellxy').cellxy;
C_PVD = load("corrdata_PVD.mat",'Cdat').Cdat;
PVDxy = load("corrdata_PVD.mat",'cellxy').cellxy;
C_PYR0 = load("corrdata_PYR0.mat",'Cdat').Cdat;
PYR0xy = load("corrdata_PYR0.mat",'cellxy').cellxy;
C_PYRb = load("corrdata_PYRb.mat",'Cdat').Cdat;
PYRbxy = load("corrdata_PYRb.mat",'cellxy').cellxy;
C_PYRc = load("corrdata_PYRc.mat",'Cdat').Cdat;
PYRcxy = load("corrdata_PYRc.mat",'cellxy').cellxy;
C_PYRd = load("corrdata_PYRD.mat",'Cdat').Cdat;
PYRdxy = load("corrdata_PYRD.mat",'cellxy').cellxy;
C_PYRe = load("corrdata_PYRE.mat",'Cdat').Cdat;
PYRexy = load("corrdata_PYRE.mat",'cellxy').cellxy;
C_SOM1 = load("corrdata_SOM1.mat",'Cdat').Cdat;
SOM1xy = load("corrdata_SOM1.mat",'cellxy').cellxy;
C_SOM4 = load("corrdata_SOM4.mat",'Cdat').Cdat;
SOM4xy = load("corrdata_SOM4.mat",'cellxy').cellxy;
C_SOM5 = load("corrdata_SOM5.mat",'Cdat').Cdat;
SOM5xy = load("corrdata_SOM5.mat",'cellxy').cellxy;
C_SOM6 = load("corrdata_SOM6.mat",'Cdat').Cdat;
SOM6xy = load("corrdata_SOM6.mat",'cellxy').cellxy;
C_SOM7 = load("corrdata_SOM7.mat",'Cdat').Cdat;
SOM7xy = load("corrdata_SOM7.mat",'cellxy').cellxy;
C_SOM8 = load("corrdata_SOM8.mat",'Cdat').Cdat;
SOM8xy = load("corrdata_SOM8.mat",'cellxy').cellxy;
C_VIP0 = load("corrdata_VIP0.mat",'Cdat').Cdat;
VIP0xy = load("corrdata_VIP0.mat",'cellxy').cellxy;
C_VIP1 = load("corrdata_VIP1.mat",'Cdat').Cdat;
VIP1xy = load("corrdata_VIP1.mat",'cellxy').cellxy;
C_VIP4 = load("corrdata_VIP4.mat",'Cdat').Cdat;
VIP4xy = load("corrdata_VIP4.mat",'cellxy').cellxy;
C_VIP5 = load("corrdata_VIP5.mat",'Cdat').Cdat;
VIP5xy = load("corrdata_VIP5.mat",'cellxy').cellxy;
C_VIP6 = load("corrdata_VIP6.mat",'Cdat').Cdat;
VIP6xy = load("corrdata_VIP6.mat",'cellxy').cellxy;

R_All = { C_PV2; C_PVA; C_PVB; C_PVC; C_PVD; C_PYR0; C_PYRb; C_PYRc; C_PYRd; C_PYRe;...
    C_SOM1; C_SOM4; C_SOM5; C_SOM6; C_SOM7; C_SOM8; C_VIP0; C_VIP1; C_VIP4;...
    C_VIP5; C_VIP6; C_Con1; C_Con2}; % make cell array
Location_ALL = {PV2xy; PVAxy; PVBxy; PVCxy; PVDxy; PYR0xy; PYRbxy; PYRcxy; PYRdxy; PYRexy;...
    SOM1xy; SOM4xy; SOM5xy; SOM6xy; SOM7xy; SOM8xy; VIP0xy; VIP1xy; VIP4xy;...
    VIP5xy; VIP6xy; Con1xy; Con2xy};
neuronType = { 'PV2', 'PVa','PVb','PVc','PVd', 'PYR0', 'PYRb', 'PYRc',...
    'PYRd', 'PYRe', 'SOM1', 'SOM4', 'SOM5', 'SOM6', 'SOM7', 'SOM8',...
    'VIP0', 'VIP1', 'VIP4', 'VIP5', 'VIP6', 'PYR_Control1', 'PYR_Control2'}; % neuron type
Days = [ -1, 1, 3, 7 ]; % days of imaging
root_dir = 'C:\Users\16568\OneDrive - Johns Hopkins\Ca Imaging Connectivity Shared\testM';

%% Load New data 
C_PVD = load("corrdata_PVD.mat",'Cdat').Cdat;
PVDxy = load("corrdata_PVD.mat",'cellxy').cellxy;
C_PYRb = load("corrdata_PYRb.mat",'Cdat').Cdat;
PYRbxy = load("corrdata_PYRb.mat",'cellxy').cellxy;
C_PYRc = load("corrdata_PYRc.mat",'Cdat').Cdat;
PYRcxy = load("corrdata_PYRc.mat",'cellxy').cellxy;
C_PYRd = load("corrdata_PYRD.mat",'Cdat').Cdat;
PYRdxy = load("corrdata_PYRD.mat",'cellxy').cellxy;
C_PYRe = load("corrdata_PYRE.mat",'Cdat').Cdat;
PYRexy = load("corrdata_PYRE.mat",'cellxy').cellxy;
C_SOM6 = load("corrdata_SOM6.mat",'Cdat').Cdat;
SOM6xy = load("corrdata_SOM6.mat",'cellxy').cellxy;
C_SOM7 = load("corrdata_SOM7.mat",'Cdat').Cdat;
COM7xy = load("corrdata_SOM7.mat",'cellxy').cellxy;

R_All = { C_PVD; C_PYRb; C_PYRc; C_PYRd; C_PYRe; C_SOM6; C_SOM7 }; % make cell array
Location_ALL = {PVDxy; PYRbxy; PYRcxy; PYRdxy; PYRexy; SOM6xy; COM7xy};
neuronType = { 'PVd', 'PYRb', 'PYRc', 'PYRd', 'PYRe', 'SOM6', 'SOM7' }; % neuron type
Days = [ -1, 1, 3, 7 ]; % days of imaging
root_dir = 'C:\Users\16568\OneDrive\JHU\Ca_Imaging_Connectivity_Shared\Plots_Dec03';


%% Network analysis

emptycheck = 0;
temp_mod = {}; 
gamma = 1;
omega = 0;
win = 4;

for omega = 1%0:0.3:1.5
    save_dir= fullfile(root_dir, sprintf('Omega=%g', omega));
    if ~exist(save_dir, 'dir')
        mkdir(save_dir);
    end

    for c = 1:size( neuronType, 2 )
        R_c = R_All{ c }; %for each neuron
        L_c = Location_ALL{c}; % each neuron type's location
        for a = 1:length(R_c) %for each imaging plane
            if isempty(R_c(a)) == 1
                emptycheck = 1;
            end
        end

        num_a = length(R_c) - emptycheck; %account for animial number variation
        fc_tot = []; fc_tot_std = [];
        num_changeT = []; num_changeT_std = [];
        
        for a = 1:num_a %for each imaging plane
            temp_mod = cell(1,4); % create cell array with each cell containing corr matrix from each time point
            R_a = R_c{a}; %get array from cell
            L_a = L_c{a}; %get cell location array

            for t = 1:size(R_a,3)
                temp_mod(t) = {R_a(:,:,t)};
            end

            num_comm = zeros(1,200);
            r = round(rand * 200);

            % initialize array to store all partitions for each timepoint
            partitionT0 = []; partitionT1 = []; partitionT3 = []; partitionT7 = []; 

            for k=1:200 %run 200 times to offset randomness in community detection
                % run community detection
                [CommunityT,QT,BT,n_it] = temporal_community_eval(temp_mod,gamma,omega,win);
                partitionT0 = [partitionT0;CommunityT(:,1)'];
                partitionT1 = [partitionT1;CommunityT(:,2)'];
                partitionT3 = [partitionT3;CommunityT(:,3)'];
                partitionT7 = [partitionT7;CommunityT(:,4)'];
                if k == r
                    P_C = CommunityT;
                    P_Q = QT;
                    P_B = BT;
                end
                if k == 1 % record each run's flexibility and number of neuron change for each community
                    flex_temp = flexibility(CommunityT', 'temp');
                    num_temp = comm_num_change(CommunityT);
                    num_comm(:,k) = comm_num(CommunityT);
                else
                    flex_temp(:,k) = flexibility(CommunityT', 'temp');
                    num_temp(k,:) = comm_num_change(CommunityT);
                    num_comm(:,k) = comm_num(CommunityT);
                end
                % flex_coef = flex_coef+flexibility(CommunityT', 'temp');
                % num_change = num_change+comm_num_change(CommunityT);
            end
            
            % Get consensus partition and save allegiance matrices
            S4 = consensus_A(...
                partitionT0,partitionT1,partitionT3, partitionT7,temp_mod,gamma,omega,win,save_dir,neuronType,c,a);

            % flexibility: calculate mean and standard deviation
            flex_coef = mean(flex_temp,2); 
            flex_std = std(flex_temp,0,2);
            std_tot = 0; temp_sum = 0;
            for q = 1:size(flex_std,1)
                temp_sum = temp_sum+flex_std(q)^2;
            end
            fc = mean(flex_coef);
            fc_tot = [fc_tot;fc];
            fc_tot_std = [fc_tot_std;sqrt(temp_sum)];

            num_neuron = size(temp_mod{1},1);
            num_change_count = mean(num_temp,1);
            num_change = mean(num_temp,1)./num_neuron.*100; % Probability

            num_std = std(num_temp,0,1)./num_neuron.*100;
            num_changeT = [num_changeT;num_change];
            num_changeT_std = [num_changeT_std; num_std];

            % CommunityT = P_C; 
            % BT = P_B;
            % QT = P_Q;
            CommunityT = S4; % consensus result

            BT = P_B; % not concensus result
            QT = P_Q; % not concensus result

            %------------------------------------------------------------
            % unsorted flexibility
            figure
            % imagesc(flex_coef)
            % set(gca, 'XTick', []);
            % colorbar
            bar(flex_coef)
            hold on
            er = errorbar(flex_coef,flex_std);
            er.Color = [0 0 0];
            er.LineStyle = 'none';
            xlabel('Neuron Index')
            ylabel('Flexibility')
            %set(gca,'Position', [433,394,576*1.2,513*1.2])
            title(sprintf("Average flexibility score is %f", fc))
            print(fullfile(save_dir,sprintf( 'flex_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'flex_%s_A%d', neuronType{ c },a ));
            save(name, 'flex_coef', 'flex_std')
            hold off

            %-------------------------------------------------------------
            % Number of community change
            figure
            X = categorical({'Day-1/1', 'Day1/3', 'Day3/7'});
            X = reordercats(X,{'Day-1/1', 'Day1/3', 'Day3/7'});
            bar(X, num_change)
            hold on
            er = errorbar(X,num_change,num_std);
            er.Color = [0 0 0];
            er.LineStyle = 'none';
            hold off
            ylabel('Percentage of Neuron that Changes Community')
            title(sprintf("Percentage Neuron Changes between Days  Neuron %s Imaging Plane %d ", neuronType{ c }, a))
            print(fullfile(save_dir,sprintf( 'comm_change_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'comm_change_%s_A%d', neuronType{ c },a ));
            save(name, 'num_change', 'num_std');
            
            %--------------------------------------------------------------
            % Number of each community
            % figure
            % bar(num_comm)
            % hold on
            % er = errorbar(num_comm,com_std);
            % er.Color = [0 0 0];
            % er.LineStyle = 'none';
            % hold off
            % title(sprintf("#of Neuron in each Community  Neuron %s Imaging Plane %d ", neuronType{ c }, a))

            %-------------------------------------------------------------
            % Modularity Matrix
            figure
            imagesc(BT)
            colorbar
            title(sprintf( 'Modularity Matrix of Neuron %s Imaging Plane %d, Quality function=%f', neuronType{ c }, a, QT ))
            print(fullfile(save_dir,sprintf( 'temp_mod_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'temp_mod_%s_A%d', neuronType{ c },a ));
            save(name, 'BT')

            %--------------------------------------------------------------
            % Community Assignment sorted
            % figure
            % imagesc(CommunityT)
            %appending the reshuffeled neuron index
            sz = size(CommunityT);
            shuff_idx = zeros(sz(1), sz(2)+1); %initialize a extra column to store neruon idx
            shuff_idx(:,1:4) = CommunityT;
            shuff_idx(:,5) = 1:sz(1);

            figure
            sortedCT = sortrows(CommunityT); %sort array based on the first column index
            sortedidx = sortrows(shuff_idx);
            imagesc(sortedCT)
            ylabel('Neuron Index')
            xlabel('Time')
            set(gca, 'XTick', 1:10);
            colorbar
            title(sprintf( 'Community Index of Neuron %s Imaging Plane %d', neuronType{ c }, a ))
            print(fullfile(save_dir,sprintf( 'temp_com_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'temp_com_%s_A%d', neuronType{ c },a ));
            save(name, 'sortedidx')

            %--------------------------------------------------------------
            % Community Assignment with sorted idx appended
            figure
            imagesc(sortedidx)
            loc_temp = [];
            for r = 1:size(sortedidx,1) % append location of neuron
                sortedidx(r,6) = L_a(sortedidx(r,5),1);
                sortedidx(r,7) = L_a(sortedidx(r,5),2);
            end
            writematrix(sortedidx, fullfile(save_dir, sprintf('Comm_idx_%s_imgPlane%d.xlsx', neuronType{ c },a )))
            flex_sorted = zeros(size(flex_coef,1), size(flex_coef,2));
            std_sorted = zeros(size(flex_coef,1), size(flex_coef,2));
            for i = 1:size(flex_sorted,1)
                flex_sorted(i,:) = flex_coef(sortedidx(i,5),:); 
                std_sorted(i,:) = flex_std(sortedidx(i,5),:);
            end
            %-------------------------------------------------------------
            % Sorted Flexbility
            figure
            % imagesc(flex_sorted)
            % title(sprintf("Average flexibility score (sorted) is %f for Neuron %s Imaging Plane %d", fc, neuronType{ c }, a))
            % colorbar
            bar(flex_sorted)
            hold on
            er = errorbar(flex_sorted,std_sorted);
            er.Color = [0 0 0];
            er.LineStyle = 'none';
            hold off
            xlabel('Neuron Index')
            ylabel('Flexibility')
            title(sprintf("Average flexibility score (sorted) is %f for Neuron %s Imaging Plane %d", fc, neuronType{ c }, a))
            print(fullfile(save_dir,sprintf( 'Avg_flex_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'Avg_flex_%s_A%d', neuronType{ c },a ));
            save(name, 'flex_sorted', 'std_sorted')
            p = plotC(sortedidx,L_a,neuronType,c,a,save_dir);
            %-------------------------------------------------------------
            % community number histogram for 200 iterations
            figure
            histogram(num_comm,'BinWidth',1,'BinMethod','integers','BinLimits',[1,10])
            h = histogram(num_comm,'BinWidth',1,'BinMethod','integers','BinLimits',[1,10]);
            bin_height = h.Values;
            xlabel('Number of Different Communities')
            ylabel('Count')
            title(sprintf("Community Number Histogram for Neuron %s Imaging Plane %d", neuronType{ c }, a))
            print(fullfile(save_dir,sprintf( 'Num_hist_%s_A%d', neuronType{ c },a )), '-dpng' )
            name = fullfile(save_dir,sprintf( 'Num_hist_%s_A%d', neuronType{ c },a ));
            save(name, 'bin_height')
            
        end
        % Average Flexibility for neuron across imaging plane--------------
        figure
        if length(fc_tot) == 4
            X = categorical({'Plane 1', 'Plane 2', 'Plane 3', 'Plane 4'});
            X = reordercats(X,{'Plane 1', 'Plane 2', 'Plane 3', 'Plane 4'});
        elseif length(fc_tot) == 3
            X = categorical({'Plane 1', 'Plane 2', 'Plane 3'});
            X = reordercats(X,{'Plane 1', 'Plane 2', 'Plane 3'});
        elseif length(fc_tot) == 2
            X = categorical({'Plane 1', 'Plane 2'});
            X = reordercats(X,{'Plane 1', 'Plane 2'});
        else
            X = categorical({'Plane 1'});
            X = reordercats(X,{'Plane 1'});
        end
        bar(X, fc_tot)
        hold on
        er = errorbar(fc_tot,fc_tot_std);
        er.Color = [0 0 0];
        er.LineStyle = 'none';
        hold off
        ylabel('Average Flexibility')
        title(sprintf("Average flexibility for Neuron %s", neuronType{ c }))
        print(fullfile(save_dir,sprintf('Avg_flex_%s', neuronType{ c })), '-dpng' )
        name = fullfile(save_dir,sprintf('Avg_flex_%s', neuronType{ c }));
        save(name, 'fc_tot', 'fc_tot_std')

        %----------------------------------------------------------------
        neuron_change = mean(num_changeT);
        neuron_std = [];
        for n = 1:size(num_changeT_std,2)
            temp_sum = 0;
            for m = 1:size(num_changeT_std,1)
                temp_sum = temp_sum + num_changeT_std(m,n)^2;
            end
            neuron_std = [neuron_std;sqrt(temp_sum)];
        end
        figure
        X = categorical({'Day-1/1', 'Day1/3', 'Day3/7'});
        X = reordercats(X,{'Day-1/1', 'Day1/3', 'Day3/7'});
        bar(X, neuron_change)
        hold on
        er = errorbar(X,neuron_change,neuron_std);
        er.Color = [0 0 0];
        er.LineStyle = 'none';
        hold off
        ylabel('Percentage of Neuron that Changes Community')
        title(sprintf("Percentage Neuron Changes between Days  Neuron %s", neuronType{ c }))
        print(fullfile(save_dir,sprintf( 'comm_change_%s', neuronType{ c })), '-dpng' )
        name = fullfile(save_dir,sprintf( 'comm_change_%s', neuronType{ c }));
        save(name, 'neuron_change', 'neuron_std')

        close all
    end
    close all
end

