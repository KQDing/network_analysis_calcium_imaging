% return how many neurons in each community in each date
function num_comm = comm_num(community)

num_comm = max(community, [], "all"); % number of communities
% disp(num_comm)
% num_comm = zeros(4,Ncomm);
% 
% for i = 1:4 % through 4 days
%     for j = 1:Ncomm % each community
%         num_comm(i,j) = length(nonzeros(community(:,i)==j));
%     end
% end
