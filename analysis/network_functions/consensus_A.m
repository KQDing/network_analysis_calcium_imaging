function C_checked = consensus_A(p0,p1,p3,p7,adja,gamma,omega,win,save_dir,neuronType,c,a)

% Implement consensus algorithm on temporal partitions using allegiance matrix without running community detection
% INPUT
    % p0, p1, p3, p7: 200 iterations result of partitions on day 0, 1, 3, 7
    % adja: adjacency matrix (correlation matrix) 
    % gamma, omega, win: parameter carried for temporal community eval
% OUTPUT
    % C : consensus partition

% Compute observed allegiance matrix
A_obs_0 = allegiance_iterative(p0); % generate allegiance matrix for day 0 partitions
A_obs_1 = allegiance_iterative(p1);
A_obs_3 = allegiance_iterative(p3);
A_obs_7 = allegiance_iterative(p7);


% Shuffle adjacency matrix
SA = adja; % initialize shuffled adja
A_null_0=zeros([size(A_obs_0),200]); A_null_1=zeros(size(A_null_0)); A_null_3=zeros(size(A_null_1)); A_null_7=zeros(size(A_null_3));

tic
for r = 1:100 % create 100 different shuffles
    for i = 1:size(adja,2) % for every time point
        temp = adja{i};
        low_dia = tril(temp,-1); % get lower triangle of this slice of adja matrix without the diagnol
        dia = diag(diag(temp)); % get only the diagnol
        num_range = (size(temp,1)^2 - size(temp,1))/2; % get the total number of index shuffling can occur
        new_low_dia = low_dia;
        for j = 1:round(num_range*log2(num_range)) % shuffle Nlog(N) times
            idx1 = randi(num_range);
            idx2 = randi(num_range);
            row1 = ceil((-1+sqrt(1+8*idx1))/2); % get row
            row2 = ceil((-1+sqrt(1+8*idx2))/2);
            col1 = idx1 - row1*(row1-1)/2;
            col2 = idx2 - row2*(row2-1)/2;
            v1 = new_low_dia(row1+1,col1);
            v2 = new_low_dia(row2+1,col2);
            new_low_dia(row1+1,col1) = v2;
            new_low_dia(row2+1,col2) = v1;
        end
        new_temp = new_low_dia + dia + new_low_dia'; % shuffled adaj slice
        SA{i} = new_temp;
    end
    
    p0_null = []; p1_null = []; p3_null = []; p7_null = []; 
    for r2 = 1:200 % 200 iterations of community detection fo each randomized adja
        [Community,Q,B,n] = temporal_community_eval(SA,gamma,omega,win);
        p0_null = [p0_null;Community(:,1)']; % null partition for randomized adja of day 0
        p1_null = [p1_null;Community(:,2)'];
        p3_null = [p3_null;Community(:,3)'];
        p7_null = [p7_null;Community(:,4)'];
    end

    A_null_0(:,:,r) = allegiance_iterative(p0_null); % allegianc matrix for null day 0
    A_null_1(:,:,r) = allegiance_iterative(p1_null);
    A_null_3(:,:,r) = allegiance_iterative(p3_null);
    A_null_7(:,:,r) = allegiance_iterative(p7_null);
end
toc

uA_null_0 = mean(A_null_0,3); % compute mean null allegiance matrix
uA_null_1 = mean(A_null_1,3);
uA_null_3 = mean(A_null_3,3);
uA_null_7 = mean(A_null_7,3);

dia = ones(1,length(uA_null_0))*200;
dia = diag(dia);
T_A0 = A_obs_0;
T_A0(A_obs_0 <= uA_null_0) = 0;
T_A0 = triu(T_A0-dia);
% Find the maximum value and its column index for each row
[maxValues, colIndices] = max(T_A0, [], 2);
% Create a zero matrix of the same size as A
T_A0r = T_A0;
T_A0 = zeros(size(T_A0));
% Iterate over each row
for i = 1:size(T_A0, 1)
    % Find all indices where the value is equal to the maximum value in that row
    maxCols = find(T_A0r(i,:) == maxValues(i));  % Indices where max value appears
    % Set these indices in the new matrix to the maximum value
    T_A0(i, maxCols) = maxValues(i);
end
% Assign max values to the corresponding positions in B
% T_A0(sub2ind(size(T_A0), (1:size(T_A0,1))', colIndices)) = maxValues;
% Check for nodes that fail the threhold
C0 = ThresholdA2P(T_A0,save_dir,neuronType,c,a,0)';

T_A1 = A_obs_1;
T_A1(A_obs_1 <= uA_null_1) = 0;
T_A1 = triu(T_A1-dia);
% Find the maximum value and its column index for each row
[maxValues, colIndices] = max(T_A1, [], 2);
% Create a zero matrix of the same size as A
T_A1r = T_A1;
T_A1 = zeros(size(T_A1));
% Iterate over each row
for i = 1:size(T_A1, 1)
    % Find all indices where the value is equal to the maximum value in that row
    maxCols = find(T_A1r(i,:) == maxValues(i));  % Indices where max value appears
    % Set these indices in the new matrix to the maximum value
    T_A1(i, maxCols) = maxValues(i);
end
% Assign max values to the corresponding positions in B
% T_A1(sub2ind(size(T_A1), (1:size(T_A1,1))', colIndices)) = maxValues;
C1 = ThresholdA2P(T_A1,save_dir,neuronType,c,a,1)';

T_A3 = A_obs_3;
T_A3(A_obs_3 <= uA_null_3) = 0;
T_A3 = triu(T_A3-dia);
% Find the maximum value and its column index for each row
[maxValues, colIndices] = max(T_A3, [], 2);
% Create a zero matrix of the same size as A
T_A3r = T_A3;
T_A3 = zeros(size(T_A3));
% Iterate over each row
for i = 1:size(T_A3, 1)
    % Find all indices where the value is equal to the maximum value in that row
    maxCols = find(T_A3r(i,:) == maxValues(i));  % Indices where max value appears
    % Set these indices in the new matrix to the maximum value
    T_A3(i, maxCols) = maxValues(i);
end
% Assign max values to the corresponding positions in B
% T_A3(sub2ind(size(T_A3), (1:size(T_A3,1))', colIndices)) = maxValues;
C3 = ThresholdA2P(T_A3,save_dir,neuronType,c,a,3)';

T_A7 = A_obs_7;
T_A7(A_obs_7 <= uA_null_7) = 0;
T_A7 = triu(T_A7-dia);
% Find the maximum value and its column index for each row
[maxValues, colIndices] = max(T_A7, [], 2);
% Create a zero matrix of the same size as A
T_A7r = T_A7;
T_A7 = zeros(size(T_A7));
% Iterate over each row
for i = 1:size(T_A7, 1)
    % Find all indices where the value is equal to the maximum value in that row
    maxCols = find(T_A7r(i,:) == maxValues(i));  % Indices where max value appears
    % Set these indices in the new matrix to the maximum value
    T_A7(i, maxCols) = maxValues(i);
end
% Assign max values to the corresponding positions in B
% T_A7(sub2ind(size(T_A7), (1:size(T_A7,1))', colIndices)) = maxValues;
C7 = ThresholdA2P(T_A7,save_dir,neuronType,c,a,7)';

C = [C0 C1 C3 C7];

% Checking numbering inconsistency
C_checked = check_group_indices(C);

% figure
% imagesc(S2(1,:)');colorbar;
% title(sprintf( 'Representative Partition of %s IP%d at Day 0, consensus quality=%f', neuronType{ c }, a, qpc ))
% print(fullfile(save_dir,sprintf( 'FC_%s_A%dDay0', neuronType{ c },a )), '-dpng' ) 