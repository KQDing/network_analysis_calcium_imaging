function checked_matrix = check_group_indices(matrix)
% this function checks indices of "community group" assignment when
% computing consensus partition
% Called in: consensus_A.m

    % Get the number of neurons and the number of columns (days)
    [~, num_columns] = size(matrix);
    
    % Initialize the output matrix (fixed group indices)
    checked_matrix = matrix;
    
    % Create a map to track which neurons are in the same group across columns
    % group_map = containers.Map('KeyType', 'char', 'ValueType', 'int32');
    
    % Initialize a counter for group indices, starting from the smallest in the original matrix
    % new_group_index = 1;
    
    % Process each column and group the neurons together
    for col = 1:num_columns-1
        % col
        num_index1 = unique(checked_matrix(:,col)); % get number of different communities in that column
        num_index2 = unique(checked_matrix(:,col+1)); % get number of different communities in the next column
        id = 0; jd = 0;
        for i = 1:length(num_index1)
            id = num_index1(i);
            overlap_list = [];
            for j = 1:length(num_index2)
                jd = num_index2(j);
                % compare the neuron index
                index1 = find(checked_matrix(:,col)==id);
                index2 = find(checked_matrix(:,col+1)==jd);
                [N,i1,i2] = intersect(index1,index2);
                if length(N) > 0.5*length(index1) && length(index1) ~= 0 % when more than half of the index overlap
                    overlap_list = [overlap_list;id,jd,length(N)];
                end
            end
            if ~isempty(overlap_list)
                [~,I] = max(overlap_list(:,3));
                l = overlap_list(I,1); % index to swap in the previous column
                k = overlap_list(I,2); % index to be swapped
                if l~=k % when community index is not the same
                    temp1 = find(checked_matrix(:,col)==k);
                    temp2 = find(checked_matrix(:,col+1)==k);
                    [N,~,~] = intersect(temp1,temp2);
                    if overlap_list(I,3) > length(N) % swap if the index is not already continous
                    % % find which group is label with i in that column
                        disp('swap')
                        ind1 = find(checked_matrix(:,col+1) == l);
                        ind2 = find(checked_matrix(:,col+1) == k);
                        checked_matrix(ind1,col+1) = k; % swap index
                        checked_matrix(ind2,col+1) = l;
                    end
                end
            end
        end
        % figure
        % imagesc(checked_matrix)
    end
    
    