% return how many neurons change community between adjacent days
function num_change = comm_num_change(community)

num_days = size(community,2) - 1;

num_change = zeros(1, num_days);
for i = 1:num_days
    num_change(:,i) = length(nonzeros(community(:,i)~=community(:,i+1)));
end
