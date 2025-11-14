clear; clc; close all;

addpath('./network_functions')

% specify data and result paths
dir = "C:\Users\16568\OneDrive\JHU\Ca_Imaging_Connectivity_Shared";
datapath = "test\Omega=1";
full_dir = fullfile(dir,datapath);
% load data
cd("C:\Users\16568\OneDrive\JHU\Ca_Imaging_Connectivity_Shared\data_pairwiseCorr\corrdata_latest")
C_NCon1 = load("corrdata_Ncont1.mat",'Cdat').Cdat;
NCon1xy = load("corrdata_Ncont1.mat",'cellxy').cellxy;
C_NCon2 = load("corrdata_Ncont2.mat",'Cdat').Cdat;
NCon2xy = load("corrdata_Ncont2.mat",'cellxy').cellxy;
C_NCon3 = load("corrdata_Ncont3.mat",'Cdat').Cdat;
NCon3xy = load("corrdata_Ncont3.mat",'cellxy').cellxy;
C_NCon6 = load("corrdata_Ncont6.mat",'Cdat').Cdat;
NCon6xy = load("corrdata_Ncont6.mat",'cellxy').cellxy;
C_NCon7 = load("corrdata_Ncont7.mat",'Cdat').Cdat;
NCon7xy = load("corrdata_Ncont7.mat",'cellxy').cellxy;
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
C_PVCon1 = load("corrdata_PVcont1.mat",'Cdat').Cdat;
PVCon1xy = load("corrdata_PVcont1.mat",'cellxy').cellxy;
C_PVCon2 = load("corrdata_PVcont2.mat",'Cdat').Cdat;
PVCon2xy = load("corrdata_PVcont2.mat",'cellxy').cellxy;
C_PVCon3 = load("corrdata_PVcont3.mat",'Cdat').Cdat;
PVCon3xy = load("corrdata_PVcont3.mat",'cellxy').cellxy;
C_PVCon4 = load("corrdata_PVcont4.mat",'Cdat').Cdat;
PVCon4xy = load("corrdata_PVcont4.mat",'cellxy').cellxy;
C_PVCon5 = load("corrdata_PVcont5.mat",'Cdat').Cdat;
PVCon5xy = load("corrdata_PVcont5.mat",'cellxy').cellxy;
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
C_DeCon1 = load("corrdata_DEcont1.mat",'Cdat').Cdat;
DeCon1xy = load("corrdata_DEcont1.mat",'cellxy').cellxy;
C_DeCon2 = load("corrdata_DEcont2.mat",'Cdat').Cdat;
DeCon2xy = load("corrdata_DEcont2.mat",'cellxy').cellxy;
C_DeCon3 = load("corrdata_DEcont3.mat",'Cdat').Cdat;
DeCon3xy = load("corrdata_DEcont3.mat",'cellxy').cellxy;
C_DeCon4 = load("corrdata_DEcont4.mat",'Cdat').Cdat;
DeCon4xy = load("corrdata_DEcont4.mat",'cellxy').cellxy;
C_yCon = load("corrdata_Ycont.mat", 'Cdat').Cdat;
yConxy = load("corrdata_Ycont.mat",'cellxy').cellxy;


R_All = { C_PV2; C_PVA; C_PVB; C_PVC; C_PVD; C_PYR0; C_PYRb; C_PYRc; C_PYRd; C_PYRe;...
    C_SOM1; C_SOM4; C_SOM5; C_SOM6; C_SOM7; C_SOM8; C_VIP0; C_VIP1; C_VIP4;...
    C_VIP5; C_VIP6; C_NCon1; C_NCon2;C_NCon3;C_NCon6;C_NCon7;C_PVCon1;C_PVCon2...
    ;C_PVCon3;C_PVCon4;C_PVCon5;C_DeCon1;C_DeCon2;C_DeCon3;C_DeCon4;C_yCon}; % make cell array
Location_ALL = {PV2xy; PVAxy; PVBxy; PVCxy; PVDxy; PYR0xy; PYRbxy; PYRcxy; PYRdxy; PYRexy;...
    SOM1xy; SOM4xy; SOM5xy; SOM6xy; SOM7xy; SOM8xy; VIP0xy; VIP1xy; VIP4xy;...
    VIP5xy; VIP6xy; NCon1xy; NCon2xy;NCon3xy;NCon6xy;NCon7xy;PVCon1xy;PVCon2xy...
    ;PVCon3xy;PVCon4xy;PVCon5xy;DeCon1xy;DeCon2xy;DeCon3xy;DeCon4xy;yConxy};
neuronType = { 'PV2', 'PVa','PVb','PVc','PVd', 'PYR0', 'PYRb', 'PYRc',...
    'PYRd', 'PYRe', 'SOM1', 'SOM4', 'SOM5', 'SOM6', 'SOM7', 'SOM8',...
    'VIP0', 'VIP1', 'VIP4', 'VIP5', 'VIP6', 'PYR_Control1', 'PYR_Control2',...
    'PYR_Control3','PYR_Control6','PYR_Control7','PV_Control1','PV_Control2',...
    'PV_Control3','PV_Control4','PV_Control5','DE_Control1','DE_Control2',...
    'DE_Control3','DE_Control4','Y_Control'}; % neuron type

emptycheck = 0;
day = [0 1 3 7];
save_dir = fullfile(dir,"Analysis May20");
if ~exist(save_dir, 'dir')
        mkdir(save_dir);
end
%% Allegiance Correlation matrix
for c = 1:size( neuronType, 2 )
    R_c = R_All{ c }; %for each neuron
    L_c = Location_ALL{c}; % each neuron type's location
    for a = 1:length(R_c) %for each imaging plane
        if isempty(R_c(a)) == 1
            emptycheck = 1;
        end
    end

    num_a = length(R_c) - emptycheck; %account for animial number variation

    for a = 1:num_a %for each imaging plane
        % temp_mod = cell(1,4); % create cell array with each cell containing corr matrix from each time point
        R_a = R_c{a}; %get array from cell
        L_a = L_c{a}; %get location array
        for tp = 1:length(day)
            max_alleg = load(fullfile(full_dir,sprintf("Max_Allegiance_%s_A%d_D%d",neuronType{ c },a,day(tp))),'T_o');
            max_alleg = max_alleg.T_o;
            correlation = [reshape(R_a(:,:,tp),[],1) reshape(max_alleg,[],1)];
            figure('Position',[680,458,700,560])
            subplot(3,1,1)
            scatter(correlation(:,1), correlation(:,2))
            title(sprintf("Allegiance Correlation(w/0) of %s IP%d D%d", neuronType{ c }, a, day(tp)))
            xlabel('Correlation Value')
            ylabel('Max Allegiance')
            id = correlation(:,2) == 0;
            mean0 = mean(correlation(id,1));
            std0 = std(correlation(id,1));
            subplot(3,1,2)
            scatter(correlation(id,1), correlation(id,2))
            title(sprintf("Allegiance Correlation(0) of %s IP%d D%d", neuronType{ c }, a, day(tp)))
            xlabel('Correlation Value')
            ylabel('Max Allegiance')
            correlation(id,:) = [];
            subplot(3,1,3)
            scatter(correlation(:,1), correlation(:,2))
            title(sprintf("Allegiance Correlation(w/out 0) of %s IP%d D%d", neuronType{ c }, a, day(tp)))
            xlabel('Correlation Value')
            ylabel('Max Allegiance')
            print(fullfile(save_dir,sprintf("Allegiance Correlation of %s IP%d D%d", neuronType{ c }, a, day(tp))), '-dpng')
            id = correlation(:,2)==200;
            mean_max = mean(correlation(id,1));
            std_max = std(correlation(id,1));
            id = correlation(:,2)<200;
            mean_bt = mean(correlation(id,1));
            std_bt = std(correlation(id,1));
            figure
            errorbar([1:3], [mean0 mean_bt mean_max], [std0 std_bt std_max],'o');
            x_labels = {'Minimal Allegiance', 'Moderate Allegiance', 'Max Allegiance'}; % Custom x-axis labels
            xticks([1 2 3])
            xticklabels(x_labels); % Apply custom x-axis labels
            xtickangle(15);
            ylabel("Mean Correlation")
            xlim([0,4]);
            print(fullfile(save_dir,sprintf("Mean Allegiance Correlation of %s IP%d D%d", neuronType{ c }, a, day(tp))), '-dpng')
        end
        close all
    end
end
%% Neuron number in community change
LG=[];
for i=1:20
    LG=[LG sprintf("Community %d",i)];
end
marker = ["-o" "-+" "-*" "-." "-x" "-square" "-diamond" "-^" "-v" "->" "-<" "-pentagram" "-hexagram"];
for c = 1:size( neuronType, 2 )
    R_c = R_All{ c }; %for each neuron
    L_c = Location_ALL{c}; % each neuron type's location
    for a = 1:length(R_c) %for each imaging plane
        if isempty(R_c(a)) == 1
            emptycheck = 1;
        end
    end

    num_a = length(R_c) - emptycheck; %account for animial number variation

    for a = 1:num_a %for each imaging plane
        R_a = R_c{a}; %get array from cell
        L_a = L_c{a}; %get location array
        HP = load(fullfile(full_dir,sprintf("temp_com_%s_A%d",neuronType{ c },a)));
        HP = HP.sortedidx; HP = HP(:,1:4);
        rg = unique(HP);
        num_neuron = zeros(length(rg),4);
        for i = 1:length(rg)
            for j=1:4
                num = sum(HP(:,j)==rg(i),'all');
                num_neuron(i,j) = num;
            end
        end
        figure;
        
        for i = 1:length(rg)
            plot([-1 1 3 7], num_neuron(i,:),marker(i))
            hold on
        end
        hold off
        ylim([0,size(HP,1)])
        legend(LG(1:length(rg)))
        title(sprintf("Community Neuron Number Change of %s IP%d", neuronType{ c }, a))
        xlabel("Time")
        ylabel("#Neuron in Community")
        print(fullfile(save_dir,sprintf("Community Neuron Number Change of %s IP%d", neuronType{ c }, a)), '-dpng')
    end
end
close all
%% Flex/Comm Compare
flex_all = {};
for c = 1:size( neuronType, 2 )
    R_c = R_All{ c }; %for each neuron
    L_c = Location_ALL{c}; % each neuron type's location
    for a = 1:length(R_c) %for each imaging plane
        if isempty(R_c(a)) == 1
            emptycheck = 1;
        end
    end

    num_a = length(R_c) - emptycheck; %account for animial number variation
    flex_t = [];
    for a = 1:num_a %for each imaging plane
        flex = load(fullfile(full_dir,sprintf('Avg_flex_%s_A%d', neuronType{ c },a )));
        flex = flex.flex_sorted;
        flex_t = [flex_t;flex];
    end
    flex_all(c) = {flex_t};
end

flex_all_combine = {};
flex_all_combine(1) = {[flex_all{1};flex_all{2};flex_all{3};flex_all{4};flex_all{5};]}; % PV
flex_all_combine(2) = {[flex_all{6};flex_all{7};flex_all{8};flex_all{9};flex_all{10};]}; % PYR
flex_all_combine(3) = {[flex_all{11};flex_all{12};flex_all{13};flex_all{14};flex_all{15};flex_all{16}]}; %SOM
flex_all_combine(4) = {[flex_all{17};flex_all{18};flex_all{19};flex_all{20};flex_all{21};]}; % VIP
flex_all_combine(5) = {[flex_all{22};flex_all{23};flex_all{24};flex_all{25};flex_all{26}]}; % PYR Control
flex_all_combine(6) = {[flex_all{27};flex_all{28};flex_all{29};flex_all{30};flex_all{31}]}; % PV Control
flex_all_combine(7) = {[flex_all{32};flex_all{33};flex_all{34};flex_all{35}]}; % DE Control

for i=1:length(flex_all_combine)
    flex_bar(i) = mean(flex_all_combine{i});
    flex_std(i) = std(flex_all_combine{i});
end
figure
bar(flex_bar)
hold on
er = errorbar(flex_bar,flex_std);
er.Color = [0 0 0];
er.LineStyle = 'none';
hold off
x_labels = {'PV', 'PYR', 'SOM', 'VIP', 'PYR Control', 'PV Control', 'DE Control'}; % Custom x-axis labels
xticklabels(x_labels); % Apply custom x-axis labels
title("Average Neuron Type Flexibility")
print(fullfile(save_dir,"Average Neuron Type Flexibility"), '-dpng')

sig = zeros(length(flex_all_combine));
pvalue = zeros(length(flex_all_combine));
for i=1:length(flex_all_combine)-1
    for j=i+1:length(flex_all_combine) % Welch's t-test
        [h,p] = ttest2(flex_all_combine{i},flex_all_combine{j},'Vartype','unequal');
        sig(i,j) = h;sig(j,i) = h; 
        pvalue(i,j) = p;pvalue(j,i) = p;
    end
end
% x_labels = {'PV', 'PYR', 'SOM', 'VIP', 'PYR Control'}; % Custom x-axis labels
y_labels = x_labels; % Custom y-axis labels
figure
imagesc(sig)
xticks(1:length(x_labels)); % Set x-ticks at integer positions
yticks(1:length(y_labels)); % Set y-ticks at integer positions
xticklabels(x_labels); % Apply custom x-axis labels
yticklabels(y_labels); % Apply custom y-axis labels
title("T-test Significance Plot")
colorbar
print(fullfile(save_dir,"T-test Significance Matrix"), '-dpng')

PV = pvalue(:,1);
PYR = pvalue(:,2);
SOM = pvalue(:,3);
VIP = pvalue(:,4);
PYR_Control = pvalue(:,5);
PV_Control = pvalue(:,6);
DE_Control = pvalue(:,7);
NeuronType = ["PV";"PYR";"SOM";"VIP";"PYR Control";"PV Control";"DE Control"];
Table = table(NeuronType,PV,PYR,SOM,VIP,PYR_Control,PV_Control,DE_Control);
writetable(Table, fullfile(save_dir,'Ttest.xlsx'))

%% Weighted degree correlation value analysis
dir = "C:\Users\16568\OneDrive\JHU\Ca_Imaging_Connectivity_Shared\test\latest";
cd(save_dir)
wd_neuron = [];
wd_save = [];
wd_name = [];
avg_cv = [];
for c=1:length(neuronType)
    wd_plane = [];
    for a=1:length(R_All{c})
        loc = readcell(fullfile(dir, sprintf('Comm_idx_%s_imgPlane%d.xlsx', neuronType{ c },a )));
        loc = cell2mat(loc);
        corr = R_All{c};
        corr = corr{1,a};
        wd_day = [];
        for d=1:4
            corr_value = corr(:,:,d);
            alleg = load(fullfile(dir, sprintf('Max_Allegiance_%s_A%d_D%d.mat', neuronType{ c },a,day(d) ))).T_o;
            degree_allg = alleg>0; % index for existing connections
            corr_1degree = corr_value.*degree_allg; % keep correlation value that corresponds to a connection
            sum_wd = sum(corr_1degree,"all");
            corr_neuron = sum(corr_1degree,2);
            degree_neuron = sum(degree_allg,2);
            sum_deg = sum(degree_allg); sum_corr = sum(corr_1degree);
            sum_corr = sum_corr(sum_deg~=0);sum_deg = sum_deg(sum_deg~=0);
            avg_wd = sum(sum_corr./sum_deg);
            wd = [sum_wd/size(alleg,1) avg_wd];
            wd_day = [wd_day;wd];
            wd_name = [wd_name;sprintf("%s_IP%d_D%d",neuronType{ c },a,day(d))];
            wd_save = [wd_save; wd];
            avg_cv = [avg_cv;mean(corr_value,'all')];
            % writematrix(corr_neuron,sprintf("Neuron_WD_%s_IP%d_D%d.xlsx",neuronType{ c },a,day(d)));
            writematrix(degree_neuron,sprintf("Neuron_Degree_%s_IP%d_D%d.xlsx",neuronType{ c },a,day(d)));
        end
        % figure
        % plot(wd_day)
        % title("Weighted day ")
        wd_day = mean(wd_day);
        wd_plane = [wd_plane;wd_day];
    end
    % figure
    % plot(wd_plane)
    % title("Weighted plane ")
    wd_neuron = [wd_neuron;mean(wd_plane)];
end
avg_cv = [wd_name avg_cv];
writematrix(avg_cv,"Average_CorrValue.xlsx")

neuron_num = [5 5 6 5 5 5 4];
wd_type = [];
start = 1;
for i=1:length(neuron_num)
    temp = mean(wd_neuron(start:start+neuron_num(i)-1,:));
    temp_std = std(wd_neuron(start:start+neuron_num(i)-1,:));
    wd_type = [wd_type;temp temp_std];
    start = start+neuron_num(i);
end
% figure
plot(wd_type(:,1))
hold on
plot(wd_type(:,3))
hold off

% imagesc(ttest)
% xticks(1:length(x_labels)); % Set x-ticks at integer positions
% yticks(1:length(x_labels)); % Set y-ticks at integer positions
% xticklabels(x_labels); % Apply custom x-axis labels
% yticklabels(x_labels); % Apply custom y-axis labels
% title("T-test Significance Plot  weighted degree")
% colorbar
% print(fullfile(dir,"T-test Significance weighted degree"), '-dpng')