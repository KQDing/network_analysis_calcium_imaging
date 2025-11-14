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
%% Network Density
name = [];
corr_density = [];
allg_density = [];
allg_d2 = [];
for c = 1:size( neuronType, 2 )-1
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

            % correlation = [reshape(R_a(:,:,tp),[],1) reshape(max_alleg,[],1)];
            % figure('Position',[680,458,700,560])
            % imagesc(max_alleg)
            % figure
            % imagesc(R_a(:,:,tp))
            % title(sprintf("Allegiance Correlation(w/0) of %s IP%d D%d", neuronType{ c }, a, day(tp)))
            % xlabel('Correlation Value')
            % ylabel('Max Allegiance')

            corr = R_a(:,:,tp);
            allg_edge = max_alleg>0;
            rho_corr = (sum(abs(corr),"all")-size(corr,1))/(size(corr,1)*(size(corr,1)-1));
            rho_allg = (sum(abs(max_alleg./200),"all"))/(size(corr,1)*(size(corr,1)-1));
            rho_allg2 = (sum(abs(allg_edge),"all"))/(size(corr,1)*(size(corr,1)-1));

            % assemble results
            name = [name; sprintf("%s_Plane%d_D%d",neuronType{ c },a,day(tp))];
            corr_density = [corr_density;rho_corr];
            allg_density = [allg_density;rho_allg];
            allg_d2 = [allg_d2;rho_allg2];
            % break
        end
        % break
    end
    % break
end

file = table(name,corr_density,allg_density,allg_d2);
writetable(file,"Network_Density_08262025.xlsx")

%% Edge Loss/Gain
name = [];
edge_gain = [];
edge_loss = [];
allg_d2 = [];
for c = 1:size( neuronType, 2 )-1
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
        loc = readcell(fullfile(datapath, sprintf('Comm_idx_%s_imgPlane%d.xlsx', neuronType{ c },a)));
        loc = cell2mat(loc); %community data; community(4columns), cell index,r,c
        ALLEG = [];
        for tp = 1:length(day)
            max_alleg = load(fullfile(full_dir,sprintf("Max_Allegiance_%s_A%d_D%d",neuronType{ c },a,day(tp))),'T_o');
            max_alleg = max_alleg.T_o;
            corr = R_a(:,:,tp);
            allg_edge = max_alleg>0;
            ALLEG(:,:,tp)=allg_edge;
            name = [name; sprintf("%s_Plane%d_D%d",neuronType{ c },a,day(tp))];
        end
        DALLEG=diff(ALLEG,1,3);
        fprintf("%s_Plane%d\n",neuronType{ c },a)
        for d=1:4
            alleg=ALLEG(:,:,d);

            [~,I] = sort(loc(:,5));
            loc_sort = loc(I,:); %the original order

            comn=max(max(loc(:,1:4)));
            disp(comn)
            N = size(alleg, 1);
            gain = 0;
            loss = 0;

            if d>1
                gain = sum(DALLEG(:,:,d-1)>0, "all")/2;
            end
            if d<4
                loss = sum(DALLEG(:,:,d)<0, "all")/2;
            end
            gain = gain/sum(alleg,"all")*2;
            loss = loss/sum(alleg,"all")*2;
            edge_loss = [edge_loss;loss];
            edge_gain = [edge_gain;gain];
        end
    end
end
file = table(name,edge_loss,edge_gain);
writetable(file,"EdgeChange_08262025.xlsx")
